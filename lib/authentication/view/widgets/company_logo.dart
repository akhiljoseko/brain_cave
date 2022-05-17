import 'package:flutter/material.dart';

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/logo_brain_cave.png",
            height: 48,
          ),
        ),
        const SizedBox(height: 48),
      ],
    );
  }
}
