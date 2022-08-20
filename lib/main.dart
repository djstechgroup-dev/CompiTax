import 'package:flutter/material.dart';
import 'package:compitax/Slides/LangSelect.dart';
import 'Slides/CustomSplash.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Argon PRO Flutter',
      theme: ThemeData(fontFamily: 'OpenSans'),
      debugShowCheckedModeBanner: false,
      home: const TextSplash(),
    );
  }
}
