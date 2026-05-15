import 'package:flutter/material.dart';

const String _pageTitle = 'Direct Page';

class DirectPage extends StatelessWidget {
  const DirectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(_pageTitle));
  }
}
