import 'package:flutter/material.dart';

class TourAll extends StatefulWidget {
  const TourAll({super.key});

  @override
  State<TourAll> createState() => _TourAllState();
}

class _TourAllState extends State<TourAll> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'images/postSix.jpg',
            height: 48,
            width: 48,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 24),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'images/postFor.jpg',
            height: 48,
            width: 48,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 24),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'images/postFive.jpg',
            height: 48,
            width: 48,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 24),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'images/postSeven.jpg',
            height: 48,
            width: 48,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 24),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'images/postEight.jpg',
                height: 48,
                width: 48,
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              left: 10,
              right: 5,
              top: 14,
              bottom: 5,
              child: Text(
                "+16",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
