import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const routeName = "/signup";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        leading: BackButton(color: Theme.of(context).primaryColor),
        elevation: 0.0,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create your account",
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 48),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Name"),
                ),
                onChanged: (s) {},
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Email"),
                ),
                onChanged: (s) {},
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Mobile"),
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
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(
                      double.maxFinite,
                      40,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
