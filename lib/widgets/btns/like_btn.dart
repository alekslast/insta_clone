import 'package:flutter/material.dart';
import 'package:insta_clone/consts/enums.dart';
import 'package:insta_clone/widgets/customizable_icon.dart';
import 'package:insta_clone/widgets/btns/btn_click_responsive.dart';

class LikeBtn extends StatelessWidget {
  final LikeBtnType type;
  final int counter;
  final IconOrientation orientation;

  static const double _postBtnSize = 30;
  static const double _commentBtnSize = 20;

  const LikeBtn({
    super.key,
    this.type = LikeBtnType.post,
    required this.counter,
    this.orientation = IconOrientation.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return BtnClickResponsive(
      activeIcon: CustomizableIcon(
        iconData: Icons.favorite,
        color: Colors.red,
        size: type == LikeBtnType.post ? _postBtnSize : _commentBtnSize,
      ),
      idleIcon: CustomizableIcon(
        iconData: Icons.favorite_outline,
        size: type == LikeBtnType.post ? _postBtnSize : _commentBtnSize,
      ),
      counter: counter,
      orientation: orientation,
    );
  }
}
