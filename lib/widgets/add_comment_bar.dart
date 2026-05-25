import 'package:flutter/material.dart';

class AddCommentBar extends StatelessWidget {
  final String commentTxt;

  const AddCommentBar({super.key, required this.commentTxt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color(0xFF1D1B20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            CircleAvatar(radius: 20),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 270,
                    child: TextField(
                      style: TextStyle(fontSize: 14, color: Colors.white),

                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 7),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        hintText: commentTxt,
                      ),
                    ),
                  ),

                  Icon(Icons.gif_box_outlined, size: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
