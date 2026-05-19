import 'package:flutter/material.dart';

const String _pageTitle = 'Other User Profile Page';

class OtherUserProfilePage extends StatelessWidget {
  const OtherUserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(_pageTitle, style: TextStyle(fontSize: 20, color: Colors.white)),
          BackButton(onPressed: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}
