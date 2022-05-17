import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EasyLoginOptions extends StatelessWidget {
  const EasyLoginOptions({Key? key, this.isSignUp = false}) : super(key: key);

  final bool isSignUp;

  String get _title => isSignUp ? "- Or sign up with -" : "- Or sign in with -";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 48),
        Text(
          _title,
          style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              "assets/icons/ic_google.svg",
              width: 32,
              height: 32,
            ),
            SvgPicture.asset(
              "assets/icons/ic_facebook.svg",
              width: 32,
              height: 32,
            ),
            SvgPicture.asset(
              "assets/icons/ic_twitter.svg",
              width: 32,
              height: 32,
            ),
          ],
        )
      ],
    );
  }
}
