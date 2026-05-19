import 'package:flutter/material.dart';
import 'package:insta_clone/models/post_model.dart';
import 'package:insta_clone/widgets/post/avatar_nickname.dart';
import 'package:insta_clone/widgets/post/btn_click_responsive.dart';
import 'package:insta_clone/widgets/post/expandable_caption.dart';
import 'package:insta_clone/widgets/post/post_action_btn.dart';
import 'package:insta_clone/widgets/post/upload_time_widget.dart';

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
          child: Stack(
            children: [
              Container(height: double.infinity, color: Colors.amber),

              Positioned(
                top: 10,
                left: 10,
                child: AvatarNickname(nickname: post.authorName),
              ),
            ],
          ),
        ),

        Container(
          width: double.infinity,
          color: Colors.black,
          padding: const EdgeInsets.fromLTRB(10, 12, 15, 15),
          child: Column(
            spacing: 10.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 10.0,
                    children: [
                      BtnClickResponsive(
                        activeIcon: Icon(Icons.favorite, color: Colors.red),
                        idleIcon: Icons.favorite_outline,
                        counter: 123,
                      ),

                      PostActionBtn(icon: Icons.comment, counter: 123),
                      PostActionBtn(icon: Icons.autorenew, counter: 123),
                      PostActionBtn(icon: Icons.send_rounded, counter: 123),
                    ],
                  ),

                  BtnClickResponsive(
                    activeIcon: Icon(
                      Icons.bookmark_rounded,
                      color: Colors.white,
                    ),
                    idleIcon: Icons.bookmark_border_rounded,
                  ),
                ],
              ),

              ExpandableCaption(
                authorNickname: post.authorName,
                caption: post.caption ?? '',
              ),

              UploadTimeWidget(uploadTime: post.creationDate),
            ],
          ),
        ),
      ],
    );
  }
}
