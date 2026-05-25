import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/btns/btn_click_responsive.dart';
import 'package:insta_clone/widgets/post/expandable_caption.dart';
import 'package:insta_clone/widgets/btns/like_btn.dart';
import 'package:insta_clone/widgets/post/post_action_btn.dart';
import 'package:insta_clone/widgets/post/upload_time_widget.dart';
import 'package:insta_clone/widgets/customizable_icon.dart';

class PostFooter extends StatelessWidget {
  final String nickname;
  final String caption;
  final DateTime creationDate;

  const PostFooter({
    super.key,
    required this.nickname,
    required this.caption,
    required this.creationDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: const EdgeInsets.fromLTRB(10, 12, 15, 15),
      child: Column(
        spacing: 10.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _renderActionBtnsHorizontalBar(),

          ExpandableCaption(authorNickname: nickname, caption: caption),

          UploadTimeWidget(uploadTime: creationDate),
        ],
      ),
    );
  }

  Widget _renderActionBtnsHorizontalBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 10.0,
          children: [
            LikeBtn(counter: 222),

            PostActionBtn(icon: Icons.comment, counter: 123),
            PostActionBtn(icon: Icons.autorenew, counter: 123),
            PostActionBtn(icon: Icons.send_rounded, counter: 123),
          ],
        ),

        BtnClickResponsive(
          activeIcon: CustomizableIcon(iconData: Icons.bookmark_rounded),
          idleIcon: CustomizableIcon(iconData: Icons.bookmark_border_rounded),
        ),
      ],
    );
  }
}
