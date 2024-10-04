import 'package:flutter/material.dart';

class EditTextField extends StatelessWidget {
  final String textTitle;
  final String placeholder;
  const EditTextField({
    super.key,
    required this.textTitle,
    required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textTitle,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xFF1B1E28),
            ),
          ),
          const SizedBox(height: 5),
          TextField(
            cursorColor: Colors.black,
            cursorWidth: 1,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 3),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: placeholder,
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF1B1E28),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.done,
                  color: Color(0xFF0D6EFD),
                ),
              ),
              filled: true,
              fillColor: const Color(0xFFF7F7F9),
            ),
          ),
        ],
      ),
    );
  }
}
