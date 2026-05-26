import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/post/post_preview/add_comment_widget.dart';
import 'package:insta_clone/widgets/post/post_preview/post_preview_action_btns_bar.dart';
import 'package:insta_clone/widgets/post/post_preview/post_preview_author_description.dart';

class PostPreviewWidget extends StatelessWidget {
  const PostPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Reels', style: TextStyle(fontSize: 22)),
          backgroundColor: Colors.transparent,
          centerTitle: false,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(color: Colors.grey),

                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: PostPreviewAuthorDescription(),
                  ),

                  Positioned(
                    bottom: 70,
                    right: 15,
                    child: PostPreviewActionBtnsBar(),
                  ),
                ],
              ),
            ),

            AddCommentWidget(),
          ],
        ),
      ),
    );
  }
}
