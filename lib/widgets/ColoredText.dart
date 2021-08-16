import 'package:flutter/material.dart';

class ColoredText extends StatelessWidget {
  const ColoredText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: "Meme",
          style: TextStyle(
            color: Colors.amber[700],
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
                text: "-fy",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ]),
    );
  }
}
