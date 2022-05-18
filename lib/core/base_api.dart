import 'dart:convert';
import 'package:brain_cave/core/exception.dart';
import 'package:http/http.dart' as http;

/// General implementation of API class.
///
/// This class is responsible for networking
/// in this application. All API classes should be extend this [BaseApi] class
/// in order to communicate with the API server
class BaseApi {
  final _baseUrl = "https://yongseng.tbcsstesting.com/api";

  /// HTTP Get method for REST API framework
  ///
  /// Classes which extends [BaseApi] can access this method and connect to the network
  ///
  /// [params] - Url to which Get request is sending. Omitt base url and apiKey from the Url
  /// those will taken care by the [BaseApi]
  Future<dynamic> get(String params) async {
    String url = _baseUrl + "?" + params;
    final response = await http.get(Uri.parse(url));
    return _getResponse(response);
  }

  Future<dynamic> post(String apiEndPoint, Map<String, dynamic> body) async {
    String url = _baseUrl + apiEndPoint;
    final response = await http.post(Uri.parse(url), body: body);
    return _getResponse(response);
  }

  /// This function will parse the [http.Response] returned from the API call
  /// According to the status code of the response function will return data or error
  _getResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 201:
      case 204:
        return response;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorizedException(response.body.toString());
      case 404:
        throw NotFoundException(response.body.toString());
      case 500:
      default:
        throw InternalServerErrorException(response.body.toString());
    }
  }
}
