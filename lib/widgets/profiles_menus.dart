import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
    required this.endIcon,
  });

  final String title;
  final String icon;
  final VoidCallback onPressed;
  final bool endIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Image.asset(icon),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      ),
      trailing: endIcon ? const Icon(Icons.navigate_next_outlined) : null,
    );
  }
}