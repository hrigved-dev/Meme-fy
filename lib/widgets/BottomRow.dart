import 'package:flutter/material.dart';
import 'package:meme_fy_v1/widgets/BottomButtons.dart';

class BottomRow extends StatelessWidget {
  final Function onPressedDelete, onPressedStar, onPressedLike;

  const BottomRow(
      {Key? key,
      required this.onPressedDelete,
      required this.onPressedStar,
      required this.onPressedLike})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BottomButtons(
            onPressedFunction: onPressedDelete,
            backgroundColor: Colors.red,
            buttonIcon: Icons.delete),
        BottomButtons(
            onPressedFunction: onPressedStar,
            backgroundColor: Colors.amber,
            buttonIcon: Icons.star),
        BottomButtons(
            onPressedFunction: onPressedLike,
            backgroundColor: Colors.green,
            buttonIcon: Icons.thumb_up),
      ],
    );
  }
}
