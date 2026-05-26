import 'package:flutter/material.dart';
import 'package:insta_clone/consts/enums.dart';
import 'package:insta_clone/helpers/show_modal.dart';
import 'package:insta_clone/widgets/customizable_icon.dart';
import 'package:insta_clone/widgets/modals/comments_modal.dart';
import 'package:insta_clone/widgets/btns/btn_click_responsive.dart';
import 'package:insta_clone/widgets/btns/like_btn.dart';
import 'package:insta_clone/widgets/modals/more_options_modal.dart';
import 'package:insta_clone/widgets/post/post_action_btn.dart';

class PostPreviewActionBtnsBar extends StatelessWidget {
  const PostPreviewActionBtnsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        LikeBtn(counter: 111, orientation: IconOrientation.vertical),

        PostActionBtn(
          icon: Icons.comment,
          counter: 123,
          orientation: IconOrientation.vertical,
          onPressFunc: () => showModal(context, CommentsModal()),
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
          activeIcon: CustomizableIcon(iconData: Icons.bookmark_rounded),
          idleIcon: CustomizableIcon(iconData: Icons.bookmark_border_rounded),
          counter: 123,
          orientation: IconOrientation.vertical,
        ),

        PostActionBtn(
          icon: Icons.more_vert,
          counter: 0,
          showCounter: false,
          orientation: IconOrientation.vertical,
          onPressFunc: () => showModal(context, MoreOptionsModal()),
        ),
      ],
    );
  }
}
