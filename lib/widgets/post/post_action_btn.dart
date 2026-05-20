import 'package:flutter/material.dart';
import 'package:insta_clone/consts/enums.dart';
import 'package:insta_clone/widgets/render_column.dart';
import 'package:insta_clone/widgets/render_row.dart';

class PostActionBtn extends StatefulWidget {
  final IconData icon;
  final int counter;
  final bool? showCounter;
  final IconOrientation? orientation;

  const PostActionBtn({
    super.key,
    required this.icon,
    required this.counter,
    this.showCounter = true,
    this.orientation = IconOrientation.horizontal,
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
    setState(() {
      _btnPressed ? _counter-- : _counter++;
      _btnPressed = !_btnPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [
      GestureDetector(onTap: handleTap, child: Icon(widget.icon, size: 30)),

      if (widget.showCounter == true)
        Text(_counter.toString(), style: TextStyle(fontSize: 12)),
    ];

    Widget renderedBtn = widget.orientation == IconOrientation.horizontal
        ? RenderRow(widgets: widgetList)
        : RenderColumn(widgets: widgetList);

    return renderedBtn;
  }
}
