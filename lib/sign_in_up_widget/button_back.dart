import 'package:flutter/material.dart';

class ButtonBack extends StatelessWidget {
  final VoidCallback onTap;
  const ButtonBack({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: onTap,
          icon: const Icon(Icons.arrow_back_ios_new, size: 16, color: Colors.black),
        ),
      ],
    );
  }
}