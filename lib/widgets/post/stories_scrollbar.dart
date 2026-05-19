import 'package:flutter/material.dart';

class StoriesScrollbar extends StatelessWidget {
  const StoriesScrollbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) => Container(
          width: 80,
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: Center(child: Text('$index')),
        ),
      ),
    );
  }
}
