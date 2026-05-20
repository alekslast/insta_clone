import 'package:flutter/material.dart';

class RenderColumn extends StatelessWidget {
  final List<Widget> widgets;

  const RenderColumn({super.key, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return Column(spacing: 5, children: widgets);
  }
}
