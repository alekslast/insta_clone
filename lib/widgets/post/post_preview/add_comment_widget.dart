import 'package:flutter/material.dart';

class AddCommentWidget extends StatelessWidget {
  const AddCommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final commentHeight = screenHeight * 0.07;

    return Container(
      color: Colors.black,
      height: commentHeight,
      width: double.infinity,
      child: Center(
        child: TextField(
          style: TextStyle(fontSize: 14, color: Colors.white),

          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            filled: true,
            fillColor: const Color.fromARGB(255, 59, 59, 59),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30),
            ),
            hintText: 'Add comment...',
            hintStyle: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
