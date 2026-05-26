import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/post/post_preview/avatar_mick_follow.dart';

class PostCaptionInCaptionAndComments extends StatelessWidget {
  final String nickname;
  final String caption;

  const PostCaptionInCaptionAndComments({
    super.key,
    required this.nickname,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AvatarNickFollow(nickname: nickname),

          Text(caption),
        ],
      ),
    );
  }
}
