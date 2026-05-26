import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/post/post_preview/add_comment_widget.dart';
import 'package:insta_clone/widgets/post/post_preview/post_preview_action_btns_bar.dart';
import 'package:insta_clone/widgets/post/post_preview/post_preview_author_description.dart';

const String _nicknamePlaceholder = 'nick-name-321';
const String _postCaptionPlaceholder =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis blandit turpis a ante iaculis elementum. Vestibulum non mauris quis nulla ultricies vestibulum. Nunc ultrices varius odio, at dignissim nulla cursus ut. Curabitur sollicitudin felis eget tellus semper tempus. Sed euismod tincidunt sagittis. Curabitur faucibus rhoncus enim aliquet bibendum. In hac habitasse platea dictumst.';

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
