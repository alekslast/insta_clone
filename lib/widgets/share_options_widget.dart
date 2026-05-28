import 'package:flutter/material.dart';
import 'package:insta_clone/consts/share_options_consts.dart';

class ShareOptionsWidget extends StatelessWidget {
  const ShareOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Color(0xFF181C1F),
        border: Border(
          top: BorderSide(
            color: const Color.fromARGB(255, 59, 59, 59),
            width: 1,
          ),
        ),
      ),
      child: ListView.separated(
        padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
        scrollDirection: Axis.horizontal,
        itemCount: shareOptionsConst.length,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder: (context, index) {
          final option = shareOptionsConst[index];

          return Center(
            child: SizedBox(
              width: 60,
              child: Column(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: option.bgColor,
                    child: Icon(option.iconData, color: Colors.white),
                  ),

                  Text(
                    option.title,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, height: 0.9),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
