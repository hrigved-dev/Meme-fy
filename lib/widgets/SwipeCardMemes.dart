import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:meme_fy_v1/models/memeModel.dart';
import 'package:meme_fy_v1/widgets/MemeData.dart';

class SwipeCardMemes extends StatefulWidget {
  final List<MemeModel> memes;

  const SwipeCardMemes({Key? key, required this.memes}) : super(key: key);

  @override
  _SwipeCardMemesState createState() => _SwipeCardMemesState();
}

class _SwipeCardMemesState extends State<SwipeCardMemes> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemWidth: 400,
      itemHeight: 500,
      layout: SwiperLayout.TINDER,
      itemCount: widget.memes.length,
      itemBuilder: (BuildContext context, int index) {
        return MemeData(
            title: widget.memes[index].title,
            imgUrl: widget.memes[index].imgUrl);
      },
    );
  }
}
