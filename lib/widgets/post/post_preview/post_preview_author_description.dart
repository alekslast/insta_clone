import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/post/post_preview/avatar_mick_follow.dart';

class PostPreviewAuthorDescription extends StatelessWidget {
  final String nickname;
  final String caption;

  const PostPreviewAuthorDescription({
    super.key,
    required this.nickname,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          AvatarNickFollow(nickname: nickname),

          Text(caption, maxLines: 1, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
