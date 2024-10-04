import 'package:flutter/material.dart';

class BuildUserInfo extends StatelessWidget {
  const BuildUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 118,
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xFFF7F7F9),
              borderRadius: BorderRadius.circular(22),
            ),
            child: Row(
              children: [
                Image.asset('images/boyPink.png'),
                const SizedBox(width: 10),
                const Text(
                  "Leonardo",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("images/bell.png", width: 44, height: 44),
          ),
        ],
      ),
    );
  }
}