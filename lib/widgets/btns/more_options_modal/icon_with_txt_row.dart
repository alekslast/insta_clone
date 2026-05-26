import 'package:flutter/material.dart';

class IconWithTxtRow extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color? color;

  const IconWithTxtRow({
    super.key,
    required this.iconData,
    required this.text,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        spacing: 20,
        children: [
          Icon(iconData, size: 30, color: color),
          Text(text, style: TextStyle(fontSize: 16, color: color)),
        ],
      ),
    );
  }
}
