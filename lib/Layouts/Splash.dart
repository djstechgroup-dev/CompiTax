import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';
import 'package:compitax/Layouts/LangSelect.dart';

class TextSplash extends StatelessWidget {
  const TextSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplash(
          child: const Text("Your Splash"),
          type: Transition.fade,
          curve: Curves.fastLinearToSlowEaseIn,
          backgroundColor: Colors.white,
          navigator: const LangSelect(),
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
            child: const Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 30.0,
            ),
            curve: Curves.fastLinearToSlowEaseIn,
            backgroundColor: Colors.white,
            navigator: const LangSelect(),
            durationInSeconds: 3));
  }
}

class ImageSplash extends StatelessWidget {
  final Widget? navigator;
  const ImageSplash({Key? key, required this.navigator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplash(
      // navigator: const LangSelect(),
      navigator: navigator!,
      type: Transition.rightToLeftWithFade,
      curve: Curves.fastLinearToSlowEaseIn,
      backgroundColor: GlobalColors.initial,
      durationInSeconds: 3,
      child: Image.asset(
        'assets/imgs/app_logos/logo.png',
        // fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width * 2 / 3,
      ),
    );
  }
}

class Splash extends StatelessWidget {
  final Widget? navigator;
  const Splash({Key? key, required this.navigator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSplash(navigator: navigator!);
  }
}
