import 'package:flutter/material.dart';

class TourInfor extends StatefulWidget {
  const TourInfor({super.key});

  @override
  State<TourInfor> createState() => _TourInforState();
}

class _TourInforState extends State<TourInfor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 24, 0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Niladri Reservoir",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1B1E28),
                    ),
                  ),
                  Text(
                    "Tekergat, Sunamgnj",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7D848D),
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'images/avatarThree.png',
                  height: 48,
                  width: 48,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'images/map.png',
                  height: 16,
                  width: 16,
                ),
                const SizedBox(width: 4),
                const Text(
                  "Tekergat",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7D848D),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'images/star.png',
                  height: 16,
                  width: 16,
                ),
                const SizedBox(width: 2),
                const Text(
                  "4.7",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1B1E28),
                  ),
                ),
                const Text(
                  "(2498)",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7D848D),
                  ),
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "\$69/",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.blue.shade400,
                    ),
                  ),
                  const TextSpan(
                    text: "Person",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7D848D),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
