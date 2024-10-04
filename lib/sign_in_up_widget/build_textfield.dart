import 'package:flutter/material.dart';

class BuildTextField extends StatefulWidget {
  final String label;
  final bool isPassword;
  final TextEditingController? controller;
  final Key? fieldKey;

  const BuildTextField({
    super.key,
    required this.label,
    this.controller,
    required this.isPassword,
    this.fieldKey,
  });

  @override
  State<BuildTextField> createState() => _BuildTextFieldState();
}

class _BuildTextFieldState extends State<BuildTextField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword == true ? _obscureText : false,
      cursorColor: Colors.black,
      cursorWidth: 1,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        labelText: widget.label,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: const Color(0xFFF7F7F9),
        suffixIcon: widget.isPassword == true
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: _obscureText == false ? Colors.grey : null,
                ),
              )
            : null,
      ),
    );
  }
}
