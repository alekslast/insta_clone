import 'package:flutter/material.dart';

class SwitchMoreOptions extends StatefulWidget {
  const SwitchMoreOptions({super.key});

  @override
  State<SwitchMoreOptions> createState() => _SwitchMoreOptionsState();
}

class _SwitchMoreOptionsState extends State<SwitchMoreOptions> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isSwitched,
      onChanged: (value) => setState(() => _isSwitched = value),
    );
  }
}
