import 'package:flutter/material.dart';
import 'package:insta_clone/consts/enums.dart';
import 'package:insta_clone/helpers/navigate_to_page.dart';
import 'package:insta_clone/pages/other_user_profile_page.dart';
import 'package:insta_clone/widgets/btns/like_btn.dart';
import 'package:insta_clone/widgets/other_comment/expandable_comment.dart';

class OtherComment extends StatelessWidget {
  final String authorNickname;
  final String commentTxt;
  final int likes;

  const OtherComment({
    super.key,
    required this.authorNickname,
    required this.commentTxt,
    required this.likes,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(radius: 20),

        const SizedBox(width: 10),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => navigateToPage(context, OtherUserProfilePage()),
                child: Text(authorNickname),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ExpandableComment(text: commentTxt),
                        Text(
                          'Reply',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  LikeBtn(
                    counter: likes,
                    orientation: IconOrientation.vertical,
                    type: LikeBtnType.comment,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
