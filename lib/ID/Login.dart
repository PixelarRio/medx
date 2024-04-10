// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medx/ID/CreateAccount.dart';

import '../AdditionalFiles/TextForm.dart';
import '../AdditionalFiles/constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController RollnumberController = TextEditingController();
    TextEditingController PasswordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                "MedX",
                style: HeadingTextStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome",
                style: SubHeadingTextStyle,
              ),
              const Text(
                "Please fill the details to create an account",
                style: FormTextStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              TextForm(
                hintText: "Enter Roll number",
                controller: RollnumberController,
              ),
              const SizedBox(
                height: 20,
              ),
              TextForm(
                hintText: "Create Password",
                controller: PasswordController,
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color(0xFF4E54C8),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an Account? "),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).pushReplacement(
                          CupertinoPageRoute<bool>(
                            fullscreenDialog: false,
                            builder: (BuildContext context) =>
                            const CreateAccount(),
                          ),
                        );
                        HapticFeedback.selectionClick();
                      },
                      child: const Text(
                        "Create Account",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xFF4E54C8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}