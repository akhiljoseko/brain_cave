class ValidationUtils {
  static bool isEmail(String email) {
    const pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    final RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(email);
  }

  static bool isMobileNumber(String mobileNumber) {
    const patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    final RegExp regExp = RegExp(patttern);
    return regExp.hasMatch(mobileNumber);
  }
}
