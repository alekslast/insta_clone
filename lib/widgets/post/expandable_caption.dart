import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/helpers/navigate_to_page.dart';
import 'package:insta_clone/pages/other_user_profile_page.dart';

class ExpandableCaption extends StatefulWidget {
  final String authorNickname;
  final String caption;

  const ExpandableCaption({
    super.key,
    required this.authorNickname,
    required this.caption,
  });

  @override
  State<ExpandableCaption> createState() => _ExpandableCaptionState();
}

class _ExpandableCaptionState extends State<ExpandableCaption> {
  bool _isExpanded = false;
  late TapGestureRecognizer _nicknameRecognizer;
  late TapGestureRecognizer _captionRecognizer;

  @override
  void initState() {
    super.initState();
    _nicknameRecognizer = TapGestureRecognizer()..onTap = _handleNicknameTap;
    _captionRecognizer = TapGestureRecognizer()..onTap = _toggleExpand;
  }

  @override
  void dispose() {
    _nicknameRecognizer.dispose();
    _captionRecognizer.dispose();

    super.dispose();
  }

  void _handleNicknameTap() => navigateToPage(context, OtherUserProfilePage());

  void _toggleExpand() => setState(() => _isExpanded = !_isExpanded);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpand,
      child: RichText(
        maxLines: _isExpanded ? null : 1,
        overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
        text: TextSpan(
          style: TextStyle(color: Colors.white, fontSize: 14.5),
          children: [
            TextSpan(
              text: '${widget.authorNickname} ',
              recognizer: _nicknameRecognizer,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            TextSpan(text: widget.caption, recognizer: _captionRecognizer),

            if (_isExpanded)
              TextSpan(
                text: ' less',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
