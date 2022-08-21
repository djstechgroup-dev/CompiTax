import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';
import 'package:compitax/Slides/LangSelect.dart';

class TextSplash extends StatelessWidget {
  const TextSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplash(
          child: Text("Your Splash"),
          type: Transition.fade,
          curve: Curves.fastLinearToSlowEaseIn,
          backgroundColor: Colors.white,
          navigator: LangSelect(),
          durationInSeconds: 3),
    );
  }
}

class IconSplash extends StatelessWidget {
  const IconSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplash(
            type: Transition.rightToLeft,
            child: Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 30.0,
            ),
            curve: Curves.fastLinearToSlowEaseIn,
            backgroundColor: Colors.white,
            navigator: LangSelect(),
            durationInSeconds: 3));
  }
}

class ImageSplash extends StatelessWidget {
  const ImageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash(
      type: Transition.rightToLeftWithFade,
      curve: Curves.fastLinearToSlowEaseIn,
      backgroundColor: GlobalColors.initial,
      navigator: LangSelect(),
      durationInSeconds: 3,
      child: Image.asset(
        'assets/imgs/_logo_.png',
        width: MediaQuery.of(context).size.width / 3,
      ),
    );
  }
}
