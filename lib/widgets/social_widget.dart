import 'package:flutter/material.dart';

class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/facebook.png',
          width: 44,
          height: 44,
        ),
        const SizedBox(width: 24),
        Image.asset(
          'images/camera.png',
          width: 44,
          height: 44,
        ),
        const SizedBox(width: 24),
        Image.asset(
          'images/xBird.png',
          width: 44,
          height: 44,
        ),
      ],
    );
  }
}
