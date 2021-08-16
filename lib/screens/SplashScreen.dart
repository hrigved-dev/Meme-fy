import 'package:flutter/material.dart';
import 'package:meme_fy_v1/screens/Dashboard.dart';
import 'package:meme_fy_v1/widgets/Splash.dart';
import 'dart:async';

import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => {
              Navigator.of(context).pushReplacement(PageTransition(
                  child: Dashboard(), type: PageTransitionType.bottomToTop))
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: TitleInfo()),
    );
  }
}
