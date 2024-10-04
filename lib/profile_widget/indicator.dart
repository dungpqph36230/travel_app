import 'package:flutter/material.dart';

class OnlineIndicator extends StatelessWidget {
  const OnlineIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        color: const Color(0xFF19B000),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.2,
          color: Colors.white,
        )
      ),
    );
  }
}