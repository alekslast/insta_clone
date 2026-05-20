import 'package:flutter/material.dart';
import 'package:insta_clone/consts/enums.dart';
import 'package:insta_clone/widgets/post/btn_click_responsive.dart';
import 'package:insta_clone/widgets/post/post_action_btn.dart';

class PostPreviewActionBtnsBar extends StatelessWidget {
  const PostPreviewActionBtnsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        BtnClickResponsive(
          activeIcon: Icon(Icons.favorite, color: Colors.red, size: 30),
          idleIcon: Icons.favorite_outline,
          counter: 123,
          orientation: IconOrientation.vertical,
        ),

        PostActionBtn(
          icon: Icons.comment,
          counter: 123,
          orientation: IconOrientation.vertical,
        ),
        PostActionBtn(
          icon: Icons.autorenew,
          counter: 123,
          orientation: IconOrientation.vertical,
        ),
        PostActionBtn(
          icon: Icons.send_rounded,
          counter: 123,
          orientation: IconOrientation.vertical,
        ),

        BtnClickResponsive(
          activeIcon: Icon(
            Icons.bookmark_rounded,
            color: Colors.white,
            size: 30,
          ),
          idleIcon: Icons.bookmark_border_rounded,
          counter: 123,
          orientation: IconOrientation.vertical,
        ),

        PostActionBtn(
          icon: Icons.more_vert,
          counter: 0,
          showCounter: false,
          orientation: IconOrientation.vertical,
        ),
      ],
    );
  }
}
