import 'package:flutter/material.dart';
import 'package:insta_clone/helpers/navigate_to_page.dart';
import 'package:insta_clone/pages/other_user_profile_page.dart';

class AvatarNickname extends StatelessWidget {
  final String nickname;

  const AvatarNickname({super.key, required this.nickname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navigateToPage(context, OtherUserProfilePage()),
      child: Row(
        spacing: 5.0,
        children: [
          CircleAvatar(radius: 15),
          Text(nickname, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
