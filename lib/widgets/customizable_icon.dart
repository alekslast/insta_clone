import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/extended_icon.dart';

class CustomizableIcon extends ExtendedIcon {
  final IconData iconData;
  final double size;
  final Color? color;

  static const double _standardSize = 30;

  const CustomizableIcon({
    super.key,
    required this.iconData,
    this.size = _standardSize,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: color ?? Theme.of(context).iconTheme.color,
      size: size,
    );
  }
}
