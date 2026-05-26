import 'package:flutter/material.dart';
import 'package:insta_clone/widgets/btns/more_options_modal/btn_with_bg.dart';
import 'package:insta_clone/widgets/btns/more_options_modal/icon_with_txt_row.dart';
import 'package:insta_clone/widgets/drag_handle.dart';
import 'package:insta_clone/widgets/options_splitter_more_options.dart';
import 'package:insta_clone/widgets/switch_more_options.dart';

const String _saveBtnTxt = 'Save';
const String _remixBtnTxt = 'Remix';
const String _sequenceBtnTxt = 'Sequence';
const String _closedCaptionBtnTxt = 'Closed Caption';
const String _viewFullscreenBtnTxt = 'View fullscreen';
const String _autoScrollBtnTxt = 'Auto scroll';
const String _whyYouSeeThisBtnTxt = 'Why you\'re seeing this post';
const String _interestedBtnTxt = 'Interested';
const String _notInterestedBtnTxt = 'Not interested';
const String _reportBtnTxt = 'Report';
const String _managePrefsBtnTxt = 'Manage content preferences';
const String _algorithmBtnTxt = 'See your algorithm';

class MoreOptionsModal extends StatelessWidget {
  const MoreOptionsModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            DragHandle(),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Row(
                spacing: 15,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BtnWithBg(
                    iconData: Icons.bookmark_outline_rounded,
                    text: _saveBtnTxt,
                  ),

                  BtnWithBg(
                    iconData: Icons.repeat_outlined,
                    text: _remixBtnTxt,
                  ),

                  BtnWithBg(
                    iconData: Icons.auto_awesome_mosaic_rounded,
                    text: _sequenceBtnTxt,
                  ),
                ],
              ),
            ),

            IconWithTxtRow(
              iconData: Icons.closed_caption_off,
              text: _closedCaptionBtnTxt,
            ),

            IconWithTxtRow(
              iconData: Icons.fullscreen,
              text: _viewFullscreenBtnTxt,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconWithTxtRow(
                  iconData: Icons.auto_mode,
                  text: _autoScrollBtnTxt,
                ),

                Row(
                  spacing: 5,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF5F7EF9),
                      ),
                      child: const Text('New'),
                    ),
                    SwitchMoreOptions(),
                  ],
                ),
              ],
            ),

            OptionsSplitterMoreOptions(),

            IconWithTxtRow(
              iconData: Icons.info_outline,
              text: _whyYouSeeThisBtnTxt,
            ),

            IconWithTxtRow(
              iconData: Icons.visibility_rounded,
              text: _interestedBtnTxt,
            ),

            IconWithTxtRow(
              iconData: Icons.visibility_off,
              text: _notInterestedBtnTxt,
            ),

            IconWithTxtRow(
              iconData: Icons.announcement_rounded,
              text: _reportBtnTxt,
              color: const Color.fromARGB(255, 172, 46, 37),
            ),

            OptionsSplitterMoreOptions(),

            IconWithTxtRow(iconData: Icons.settings, text: _managePrefsBtnTxt),

            IconWithTxtRow(iconData: Icons.tune_sharp, text: _algorithmBtnTxt),
          ],
        ),
      ),
    );
  }
}
