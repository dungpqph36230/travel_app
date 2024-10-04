import 'package:flutter/material.dart';
import 'package:travel_app/screens/forgotpass.dart';
import 'package:travel_app/screens/signUp.dart';
import 'package:travel_app/sign_in_up_widget/build_sign_up_button.dart';
import 'package:travel_app/sign_in_up_widget/build_textfield.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';
import 'package:travel_app/widgets/bottom_convexs.dart';
import 'package:travel_app/widgets/social_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ButtonBack(
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 50),
              const Text(
                "Sign in now",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              const Text(
                "Please sign in to continue our app",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              const SizedBox(height: 48),
              const BuildTextField(
                label: "",
                isPassword: false,
              ),
              const SizedBox(height: 18),
              const BuildTextField(
                label: "",
                isPassword: true,
              ),
              const SizedBox(height: 11),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPassTravel(),
                        ),
                      );
                    },
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0D6EFD),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              BuildSignButton(
                  signButton: "Sign In",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomConvexs()));
                  }),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF707B81),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0D6EFD),
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                "Or connect",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF707B81),
                ),
              ),
              const SizedBox(height: 90),
              const Social(),
              const SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}
