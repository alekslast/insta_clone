import 'package:flutter/material.dart';
import 'package:insta_clone/consts/enums.dart';
import 'package:insta_clone/helpers/navigate_to_page.dart';
import 'package:insta_clone/pages/other_user_profile_page.dart';
import 'package:insta_clone/widgets/btns/like_btn.dart';
import 'package:insta_clone/widgets/other_comment/expandable_comment.dart';

const String _commentPlaceholder =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis blandit turpis a ante iaculis elementum. Vestibulum non mauris quis nulla ultricies vestibulum. Nunc ultrices varius odio, at dignissim nulla cursus ut. Curabitur sollicitudin felis eget tellus semper tempus. Sed euismod tincidunt sagittis. Curabitur faucibus rhoncus enim aliquet bibendum. In hac habitasse platea dictumst.';

class OtherComment extends StatelessWidget {
  const OtherComment({super.key});

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
                child: Text('author name'),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ExpandableComment(text: _commentPlaceholder),
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
                    counter: 321,
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
