import 'package:flutter/material.dart';

class ExpandableComment extends StatefulWidget {
  final String text;

  const ExpandableComment({super.key, required this.text});

  @override
  State<ExpandableComment> createState() => _ExpandableCommentState();
}

class _ExpandableCommentState extends State<ExpandableComment> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() => _isExpanded = !_isExpanded);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpanded,
      child: Text(
        widget.text,
        maxLines: _isExpanded ? null : 3,
        overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
      ),
    );
  }
}
