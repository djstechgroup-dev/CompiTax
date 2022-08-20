import 'dart:async';
// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:compitax/Slides/LangSelect.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';

// class CustomSplash extends StatefulWidget {
//   const CustomSplash({Key? key}) : super(key: key);

//   @override
//   _CustomSplashState createState() => _CustomSplashState();
// }

// class _CustomSplashState extends State<CustomSplash> {
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   log('xxxx');
//   //   checkIfUserAvailable();
//   // }

//   // void checkIfUserAvailable() {
//   //   if (_isAvailable == true) _navigateNext(const LangSelect());
//   // }

//   // Future _navigateNext(Widget child) async {
//   //   Timer(const Duration(seconds: 3), () {
//   //     Navigator.of(context).pushReplacement(
//   //       MaterialPageRoute(
//   //         builder: (context) => child,
//   //       ),
//   //     );
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     // checkIfUserAvailable();

//     return Container(
//         color: Colors.deepPurple,
//         child: Center(
//             child: ListView(
//           children: [
//             Image.asset("assets/imgs/openweather.png"),
//             const Text(
//               'Splash',
//               style: TextStyle(fontSize: 40),
//             ),
//             Icon(Icons.email)
//           ],
//         )));
//     // LangSelect();
//   }
// }




class TextSplash extends StatelessWidget {
  const TextSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplash(
          child: const Text(
            "Your Splash",
            style: TextStyle(fontSize: 100),
          ),
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

// class ImageSplash extends StatelessWidget {
//   const ImageSplash({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplash(
//         type: Transition.rightToLeftWithFade,
//         child: const Image(
//           image: 
//         curve: Curves.fastLinearToSlowEaseIn,
//         backgroundColor: Colors.white,
//         navigator: const LangSelect(),
//         durationInSeconds: 3);
//   }
// }
