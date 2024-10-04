// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:travel_app/auth_user/firebase_auth_services.dart';
import 'package:travel_app/screens/signIn.dart';
import 'package:travel_app/sign_in_up_widget/build_sign_up_button.dart';
import 'package:travel_app/sign_in_up_widget/build_textfield.dart';
import 'package:travel_app/sign_in_up_widget/button_back.dart';
import 'package:travel_app/widgets/social_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // final FirebaseAuthServices _auth = FirebaseAuthServices();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                  {
                    Navigator.pop(context);
                  }
                },
              ),
              const SizedBox(height: 50),
              const Text(
                "Sign up now",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              const Text(
                "Please fill the details and create account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 48),
              BuildTextField(
                controller: _usernameController,
                label: "",
                isPassword: false,
              ),
              const SizedBox(height: 18),
              BuildTextField(
                controller: _emailController,
                label: "",
                isPassword: false,
              ),
              const SizedBox(height: 18),
              BuildTextField(
                controller: _passwordController,
                label: "",
                isPassword: true,
              ),
              const SizedBox(height: 28),
              BuildSignButton(
                signButton: "Sign Up",
                onTap: () {
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignIn(),
                      ),
                    );
                  }
                },
              ),
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
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0D6EFD),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                "Or connect",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF707B81),
                ),
              ),
              const SizedBox(height: 40),
              const Social(),
              const SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}
