import 'package:flutter/material.dart';
import 'package:insta_clone/consts/friend_list.dart';
import 'package:insta_clone/widgets/drag_handle.dart';
import 'package:insta_clone/widgets/search_bar_send_to_fiend.dart';
import 'package:insta_clone/widgets/share_options_widget.dart';

class SendToFriendModal extends StatelessWidget {
  const SendToFriendModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 90),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 0.0,
              childAspectRatio: 0.8,
              children: List.generate(friendList.length, (index) {
                final friend = friendList[index];

                return Column(
                  spacing: 5,
                  children: [
                    CircleAvatar(
                      radius: 33,
                      child: Text(
                        friend.name[0].toUpperCase(),
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Text(
                      friend.name,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                );
              }),
            ),
          ),

          Positioned(top: 0, child: DragHandle()),

          Positioned(top: 30, left: 0, right: 0, child: SearchBarSendToFiend()),

          Positioned(bottom: 0, left: 0, right: 0, child: ShareOptionsWidget()),
        ],
      ),
    );
  }
}
