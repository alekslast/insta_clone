import 'package:flutter/material.dart';
import 'package:insta_clone/models/share_option_model.dart';

final List<ShareOptionModel> shareOptionsConst = [
  ShareOptionModel(
    title: 'Share',
    iconData: Icons.share_outlined,
    bgColor: Color(0xFF2C3036),
  ),
  ShareOptionModel(
    title: 'WhatsApp',
    iconData: Icons.add_call,
    bgColor: Color(0xFF50D369),
  ),
  ShareOptionModel(
    title: 'Add to story',
    iconData: Icons.auto_mode_rounded,
    bgColor: Color(0xFF2C3036),
  ),
  ShareOptionModel(
    title: 'Copy Link',
    iconData: Icons.link,
    bgColor: Color(0xFF2C3036),
  ),
  ShareOptionModel(
    title: 'SMS',
    iconData: Icons.share_outlined,
    bgColor: Color(0xFF3D86F3),
  ),
  ShareOptionModel(
    title: 'Download',
    iconData: Icons.file_download_outlined,
    bgColor: Color(0xFF2C3036),
  ),
  ShareOptionModel(
    title: 'Threds',
    iconData: Icons.alternate_email_rounded,
    bgColor: Color(0xFF000000),
  ),
];
