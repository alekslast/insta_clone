import 'package:flutter/material.dart';
import 'package:insta_clone/consts/enums.dart';
import 'package:insta_clone/widgets/render_column.dart';
import 'package:insta_clone/widgets/render_row.dart';

class BtnClickResponsive extends StatefulWidget {
  final IconData idleIcon;
  final Icon activeIcon;
  final int? counter;
  final IconOrientation? orientation;

  const BtnClickResponsive({
    super.key,
    required this.activeIcon,
    required this.idleIcon,
    this.counter,
    this.orientation = IconOrientation.horizontal,
  });

  @override
  State<BtnClickResponsive> createState() => _BtnClickResponsiveState();
}

class _BtnClickResponsiveState extends State<BtnClickResponsive>
    with SingleTickerProviderStateMixin {
  bool _pressed = false;
  int _counter = 0;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    if (widget.counter != null) {
      setState(() => _counter = widget.counter!);
    }

    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    _animation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 0.5),
        weight: 30,
      ), // Shrink
      TweenSequenceItem(
        tween: Tween(begin: 0.5, end: 1.2),
        weight: 30,
      ), // Over-expand
      TweenSequenceItem(
        tween: Tween(begin: 1.2, end: 1.0),
        weight: 30,
      ), // Settle
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    _controller.forward(from: 0.0);

    if (_counter != 0) {
      setState(() {
        _pressed ? _counter-- : _counter++;
        _pressed = !_pressed;
      });
    } else {
      setState(() => _pressed = !_pressed);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget animatedIcon = _pressed
        ? widget.activeIcon
        : Icon(
            widget.idleIcon,
            color: Theme.of(context).iconTheme.color,
            size: 30,
          );

    List<Widget> widgetList = [
      GestureDetector(
        onTap: _handleTap,
        child: ScaleTransition(scale: _animation, child: animatedIcon),
      ),

      if (widget.counter != null)
        Text(_counter.toString(), style: TextStyle(fontSize: 12)),
    ];

    Widget renderBtn = widget.orientation == IconOrientation.horizontal
        ? RenderRow(widgets: widgetList)
        : RenderColumn(widgets: widgetList);

    return renderBtn;
  }
}
