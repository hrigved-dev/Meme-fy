import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meme_fy_v1/data/meme.dart';
import 'package:meme_fy_v1/models/memeModel.dart';
import 'package:meme_fy_v1/widgets/BottomRow.dart';
import 'package:meme_fy_v1/widgets/ColoredText.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:meme_fy_v1/widgets/MemeData.dart';
import 'package:meme_fy_v1/widgets/SwipeCardMemes.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<MemeModel> memes = [];

  Memes memesClass = Memes();
  bool _loading = true;

  getMemes() async {
    await memesClass.getMemes();
    memes = memesClass.memesList;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    getMemes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ))
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Hero(
            tag: "Meme-fy",
            child: ColoredText(),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: _loading
                ? Center(
                    child: Container(
                      height: 420,
                      width: 500,
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  )
                : SwipeCardMemes(memes: memes),
          ),
          SizedBox(
            height: 20,
          ),
          BottomRow(
              onPressedDelete: () {},
              onPressedStar: () {},
              onPressedLike: () {}),
        ],
      ),
    );
  }
}
