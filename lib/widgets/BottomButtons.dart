import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  final onPressedFunction;
  final backgroundColor;
  final buttonIcon;

  const BottomButtons(
      {@required this.onPressedFunction,
      @required this.backgroundColor,
      @required this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Icon(
        buttonIcon,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(20),
        primary: backgroundColor,
      ),
      onPressed: () {
        onPressedFunction;
      },
    );
  }
}
