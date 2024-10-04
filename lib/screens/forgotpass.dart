import 'package:flutter/material.dart';
import 'package:travel_app/screens/otp.dart';
import 'package:travel_app/sign_in_up_widget/build_sign_up_button.dart';
import 'package:travel_app/sign_in_up_widget/build_textfield.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';

class ForgetPassTravel extends StatelessWidget {
  const ForgetPassTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            ButtonBack(onTap: () {
              Navigator.pop(context);
            }),
            const SizedBox(height: 30),
            const Text(
              "Forgot password",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            const Text(
              "Enter your email account to reset your password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            const BuildTextField(label: "", isPassword: false),
            const SizedBox(height: 24),
            BuildSignButton(
              signButton: 'Reset Password',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OTP_App()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
