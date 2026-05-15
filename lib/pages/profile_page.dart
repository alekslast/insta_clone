import 'package:flutter/material.dart';

const String _pageTitle = 'Profile Page';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(_pageTitle));
  }
}
