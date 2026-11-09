import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {
  const new({super.key});

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool toggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(
          value: toggled,
          onChanged: (value) {
            toggled = value;
            setState(() {});
          },
        ),
      ),
    );
  }
}
