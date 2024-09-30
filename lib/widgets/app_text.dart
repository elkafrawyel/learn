import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  const AppText({
    super.key,
    required this.text,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor ?? Colors.black,
        fontSize: fontSize ?? 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
