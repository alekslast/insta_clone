import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/add_comment_bar.dart';
import 'package:insta_clone/widgets/drag_handle.dart';
import 'package:insta_clone/widgets/other_comment/other_comment.dart';

const String _commentPlaceholder = 'What do you think of this?';

class CommentsModal extends StatelessWidget {
  const CommentsModal({super.key});

  @override
  Widget build(BuildContext context) {
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 60),
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: OtherComment(),
              ),
            ),
          ),

          Positioned(top: 0, child: DragHandle()),

          Positioned(
            bottom: keyboardHeight,
            child: AddCommentBar(commentTxt: _commentPlaceholder),
          ),
        ],
      ),
    );
  }
}
