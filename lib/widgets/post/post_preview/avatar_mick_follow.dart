import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/post/avatar_nickname.dart';

class AvatarNickFollow extends StatelessWidget {
  final String nickname;

  const AvatarNickFollow({super.key, required this.nickname});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.0,
      children: [
        AvatarNickname(nickname: nickname),

        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            minimumSize: Size.zero,
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 10.0,
            ),
            side: const BorderSide(color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text('Follow', style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }
}
