import 'package:flutter/material.dart';

class PostActionBtn extends StatefulWidget {
  final IconData icon;
  final int counter;
  final bool? showCounter;

  const PostActionBtn({
    super.key,
    required this.icon,
    required this.counter,
    this.showCounter = true,
  });

  @override
  State<PostActionBtn> createState() => _PostActionBtnState();
}

class _PostActionBtnState extends State<PostActionBtn> {
  bool _btnPressed = false;
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    setState(() => _counter = widget.counter);
  }

  void handleTap() {
    debugPrint('---BTN PRESSED---');

    setState(() {
      _btnPressed ? _counter-- : _counter++;
      _btnPressed = !_btnPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(onTap: handleTap, child: Icon(widget.icon)),

        if (widget.showCounter == true) Text(_counter.toString()),
      ],
    );
  }
}
