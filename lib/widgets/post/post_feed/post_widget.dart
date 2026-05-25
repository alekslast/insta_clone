import 'package:flutter/material.dart';
import 'package:insta_clone/helpers/navigate_to_page.dart';
import 'package:insta_clone/models/post_model.dart';
import 'package:insta_clone/widgets/post/avatar_nickname.dart';
import 'package:insta_clone/widgets/post/post_feed/post_footer.dart';
import 'package:insta_clone/widgets/post/post_preview/post_preview_widget.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key, required this.post});

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double height75 = screenHeight * 0.75;

    return Column(
      children: [
        SizedBox(
          height: height75,
          child: GestureDetector(
            onTap: () => navigateToPage(context, PostPreviewWidget()),
            child: Hero(
              tag: 'post-preview-${post.id}',
              child: Stack(
                children: [
                  Container(height: double.infinity, color: Colors.grey),

                  Positioned(
                    top: 10,
                    left: 10,
                    child: AvatarNickname(nickname: post.authorName),
                  ),
                ],
              ),
            ),
          ),
        ),

        PostFooter(
          nickname: post.authorName,
          caption: post.caption ?? '',
          creationDate: post.creationDate,
        ),
      ],
    );
  }
}
