import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:compitax/Slides/LangSelect.dart';

class CustomSplash extends StatefulWidget {
  const CustomSplash({Key? key}) : super(key: key);

  @override
  _CustomSplashState createState() => _CustomSplashState();
}

class _CustomSplashState extends State<CustomSplash> {
  // @override
  // void initState() {
  //   super.initState();
  //   log('xxxx');
  //   checkIfUserAvailable();
  // }

  // void checkIfUserAvailable() {
  //   if (_isAvailable == true) _navigateNext(const LangSelect());
  // }

  // Future _navigateNext(Widget child) async {
  //   Timer(const Duration(seconds: 3), () {
  //     Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (context) => child,
  //       ),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // checkIfUserAvailable();

    return Container(
        color: Colors.deepPurple,
        child: Center(
            child: ListView(
          children: [
            Image.asset("assets/imgs/openweather.png"),
            const Text(
              'Splash',
              style: TextStyle(fontSize: 40),
            ),
            Icon(Icons.email)
          ],
        )));
    // LangSelect();
  }
}
