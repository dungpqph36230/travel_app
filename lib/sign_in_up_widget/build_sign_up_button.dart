import 'package:flutter/material.dart';

class BuildSignButton extends StatelessWidget {
  final VoidCallback onTap;
  final String signButton;
  const BuildSignButton({super.key, required this.signButton, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 56,
            width: 335,
            decoration: BoxDecoration(
              color: const Color(0xFF0D6EFD),
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextButton(
              onPressed:onTap,
              child: Text(
                signButton,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}