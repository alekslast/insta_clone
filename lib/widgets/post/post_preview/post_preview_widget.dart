import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/post/post_preview/post_preview_action_btns_bar.dart';
import 'package:insta_clone/widgets/post/post_preview/post_preview_author_description.dart';

const String _nicknamePlaceholder = 'nick-name-321';
const String _postCaptionPlaceholder =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis blandit turpis a ante iaculis elementum. Vestibulum non mauris quis nulla ultricies vestibulum. Nunc ultrices varius odio, at dignissim nulla cursus ut. Curabitur sollicitudin felis eget tellus semper tempus. Sed euismod tincidunt sagittis. Curabitur faucibus rhoncus enim aliquet bibendum. In hac habitasse platea dictumst.';

class PostPreviewWidget extends StatelessWidget {
  const PostPreviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    final screenHeight = MediaQuery.of(context).size.height;
    final contentHeight = screenHeight * 0.87;
    final commentHeight = screenHeight * 0.07;

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        // resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text('Reels', style: TextStyle(fontSize: 22)),
          backgroundColor: Colors.transparent,
          centerTitle: false,
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(
              height: contentHeight,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(color: Colors.amber),

                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: PostPreviewAuthorDescription(
                      nickname: _nicknamePlaceholder,
                      caption: _postCaptionPlaceholder,
                    ),
                  ),

                  Positioned(
                    bottom: 70,
                    right: 15,
                    child: PostPreviewActionBtnsBar(),
                  ),
                ],
              ),
            ),

            Container(
              color: Colors.black,
              height: commentHeight,
              width: double.infinity,
              child: Center(
                child: TextField(
                  style: TextStyle(fontSize: 14, color: Colors.white),

                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 59, 59, 59),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Add comment...',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
