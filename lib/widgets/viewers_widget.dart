import 'package:flutter/material.dart';

class ViewersWidget extends StatelessWidget {
  const ViewersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      width: 66,
      child: Stack(
        children: [
          Positioned(
            left: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'images/avatarOne.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
          Positioned(
            left: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'images/avatarTwo.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
          Positioned(
            right: 14,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'images/avatarThree.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 24,
              height: 24,
              padding: const EdgeInsets.fromLTRB(0, 3, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFE5F4FF),
              ),
              child: const Text(
                '50+',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Color(
                    0xFF1B1E28,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
