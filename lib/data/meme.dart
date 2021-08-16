import 'dart:convert';

import 'package:meme_fy_v1/models/memeModel.dart';
import 'package:http/http.dart' as http;
import 'package:swipe_cards/swipe_cards.dart';

class Memes {
  List<MemeModel> memesList = [];

  Future<void> getMemes() async {
    String url = "https://meme-api.herokuapp.com/gimme/50";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    var memeData = jsonData['memes'];

    if (response.statusCode == 200) {
      for (int i = 0; i < memeData.length; i++) {
        if (memeData[i]["title"] != "" && memeData[i]["preview"][1] != "") {
          MemeModel memes = MemeModel(
              title: memeData[i]["title"], imgUrl: memeData[i]["preview"][2]);
          memesList.add(memes);
        }
      }
    }
  }
}
