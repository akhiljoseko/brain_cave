import 'package:brain_cave/authentication/view/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login to your account",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                const SizedBox(height: 48),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Email/Mobile"),
                  ),
                  onChanged: (s) {},
                ),
                const SizedBox(height: 24),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text("Password"),
                  ),
                  onChanged: (s) {},
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(
                      double.maxFinite,
                      40,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Sign In",
                  ),
                ),
                const SizedBox(height: 48),
                Text(
                  "- Or sign in with -",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(fontSize: 14),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Don't have an account?",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const SignUpScreen()),
                      ),
                    );
                  },
                  child: const Text("Sign Up"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
