import 'package:flutter/material.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Instaclone'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [const Text('Hello World!!!')],
        ),
      ),
    );
  }
}
