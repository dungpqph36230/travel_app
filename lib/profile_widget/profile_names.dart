import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({super.key, required this.selectedName});
  final String selectedName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          selectedName,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Color(0xFF1B1E28),
          ),
        ),
        const Text(
          "Active Now",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF19B000),
          ),
        ),
      ],
    );
  }
}
