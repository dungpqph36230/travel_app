import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:travel_app/screens/forgotpass.dart';
import 'package:travel_app/sign_in_up_widget/build_sign_up_button.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';

// ignore: camel_case_types
class OTP_App extends StatelessWidget {
  const OTP_App({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 70,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F9),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            ButtonBack(onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgetPassTravel()));
            }),
            const SizedBox(height: 30),
            const Text(
              "OTP Verification",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            const Text(
              "Please check your email www.uihut@gmail.com to see the verification code",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "OTP Code",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(
                      color: const Color(0xFFF7F7F9),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            BuildSignButton(
                signButton: "Verify",
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPassTravel()));
                }),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Resend code to",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7D848D),
                    ),
                  ),
                  Text(
                    "${DateTime.now().hour} : ${DateTime.now().minute}",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7D848D),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
