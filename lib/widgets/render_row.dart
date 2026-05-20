import 'package:flutter/material.dart';

class RenderRow extends StatelessWidget {
  final List<Widget> widgets;

  const RenderRow({super.key, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return Row(children: widgets);
  }
}
