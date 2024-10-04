import 'package:flutter/material.dart';

class BuildTitle extends StatelessWidget {
  const BuildTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
      child: RichText(
        text: const TextSpan(
          text: "Explore the ",
          style: TextStyle(
              fontSize: 38, fontWeight: FontWeight.w300, color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: "Beautiful ",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 38,
                  color: Colors.black),
            ),
            TextSpan(
              text: "world!",
              style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}