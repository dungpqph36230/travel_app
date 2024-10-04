import 'package:flutter/material.dart';

class ReadMoedText extends StatefulWidget {
  final String text;
  final int maxLength;
  const ReadMoedText({super.key, required this.text, required this.maxLength});

  @override
  State<ReadMoedText> createState() => _ReadMoedTextState();
}

class _ReadMoedTextState extends State<ReadMoedText> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    String displayedText = isExpanded
        ? widget.text
        : (widget.text.length > widget.maxLength
            ? "${widget.text.substring(0, widget.maxLength)}..."
            : widget.text);
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: displayedText,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                height: 1.7,
                color: Color(0xFF7D848D),
              ),
            ),
            if (widget.text.length > widget.maxLength)
              TextSpan(
                text: isExpanded ? " Read Less" : " Read More",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange.shade800,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
