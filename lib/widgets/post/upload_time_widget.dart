import 'package:flutter/material.dart';
import 'package:insta_clone/helpers/format_time_since_post_upload.dart';

class UploadTimeWidget extends StatelessWidget {
  final DateTime uploadTime;

  const UploadTimeWidget({super.key, required this.uploadTime});

  @override
  Widget build(BuildContext context) {
    final String formattedDate = formatTimeSincePostUpload(uploadTime);

    return Text(
      formattedDate,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
    );
  }
}
