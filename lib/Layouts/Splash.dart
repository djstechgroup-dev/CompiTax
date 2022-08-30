import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';
import 'package:compitax/Layouts/LangSelect.dart';

import 'package:get_storage/get_storage.dart';

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
      durationInSeconds: 5,
      child: Image.asset(
        'assets/imgs/app_logos/logo.png',
        // fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width * 2 / 5,
      ),
    );
  }
}

class Splash extends StatelessWidget {
  final Widget? navigator;
  const Splash({Key? key, required this.navigator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetStorage __store = GetStorage('compitax_data');
    __store.write('lang', 'English');
    __store.write('rating', {
      'num': 1.0, 'mode': 1,
      //  'icon': Icons.star
    });

    return ImageSplash(navigator: navigator!);
  }
}
