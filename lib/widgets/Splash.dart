import 'package:flutter/material.dart';
import 'package:meme_fy_v1/widgets/ColoredText.dart';

class TitleInfo extends StatelessWidget {
  const TitleInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 170,
          width: 170,
          child: Image.asset('assets/troll.gif'),
        ),
        Hero(
          tag: "Meme-fy",
          child: ColoredText(),
        )
      ],
    );
  }
}
