import 'package:flutter/material.dart';
import 'package:travel_app/widgets/menupro_widget.dart';
import 'package:travel_app/widgets/profiles_menus.dart';

Widget buildInfoColumn(String title, String value) {
  return Column(
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xFF1B1E28),
        ),
      ),
      const SizedBox(height: 5),
      Text(
        value,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF0D6EFD),
        ),
      ),
    ],
  );
}

Widget buildVerticalDivider() {
  return Container(
    width: 1.5,
    height: 100,
    color: const Color(0xFFF7F7F9),
  );
}

Widget buildProfileMenuItem(IconData icon, String title, VoidCallback onPressed) {
  return ProfileMenuWidget(
    icon: icon,
    title: title,
    onPressed: onPressed,
    endIcon: true,
  );
}

Widget buildProfileMenuItemWithImage(String icon, String title, VoidCallback onPressed) {
  return ProfileMenu(
    icon: icon,
    title: title,
    onPressed: onPressed,
    endIcon: true,
  );
}

Widget buildDivider() {
  return const Divider(
    height: 1,
    color: Color(0xFFF7F7F9),
  );
}