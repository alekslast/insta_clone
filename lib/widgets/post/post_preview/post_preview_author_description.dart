import 'package:flutter/material.dart';
import 'package:insta_clone/services/post_provider.dart';
import 'package:insta_clone/widgets/post/post_preview/avatar_mick_follow.dart';
import 'package:provider/provider.dart';

class PostPreviewAuthorDescription extends StatelessWidget {
  const PostPreviewAuthorDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final post = context.watch<PostProvider>().globalPost;
    final postCaption = post?.caption ?? '';
    final authorNickname = post?.authorName ?? '';

    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          AvatarNickFollow(nickname: authorNickname),

          Text(postCaption, maxLines: 1, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
