import 'package:flutter/material.dart';

class BuildSection extends StatelessWidget {
  final String sectionTitle;
  final VoidCallback onTap;
  final Widget carousel;

  const BuildSection({
    super.key,
    required this.sectionTitle,
    required this.onTap,
    required this.carousel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionTitle,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: onTap,
                child: const Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF0D6EFD)),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(onTap: onTap, child: carousel),
      ],
    );
  }
}
