import 'package:flutter/material.dart';

class BtnWithBg extends StatelessWidget {
  final IconData iconData;
  final String text;

  const BtnWithBg({super.key, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData, size: 27),
          style: IconButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 16),
            backgroundColor: Color(0xFF25282D),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),

        Text(text),
      ],
    );
  }
}
