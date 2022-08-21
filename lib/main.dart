import 'package:compitax/Slides/Auth/SocialSign.dart';
import 'package:flutter/material.dart';
import 'package:compitax/Slides/LangSelect.dart';
import 'Slides/Auth/SignIn.dart';
import 'Slides/Auth/SignUp.dart';
import 'Slides/Splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CompiTax',
        // theme: ThemeData(
        //   // Define the default brightness and colors.
        //   // brightness: Brightness.dark,
        //   primaryColor: Colors.lightBlue[800],

        //   // Define the default font family.
        //   fontFamily: 'Georgia',

        //   // Define the default `TextTheme`. Use this to specify the default
        //   // text styling for headlines, titles, bodies of text, and more.
        //   textTheme: TextTheme(
        //     bodyText1: const TextStyle(fontSize: 18.0),
        //     bodyText2: const TextStyle(fontSize: 16.0),
        //   ),
        // ),
        // // home: const ImageSplash(),
        initialRoute: "/onboarding",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => const ImageSplash(),
          "/lang_select": (BuildContext context) => const LangSelect(),
          "/social_sign": (BuildContext context) => const SocialSign(),
          "/sign_in": (BuildContext context) => const SignIn(),
          "/sign_up": (BuildContext context) => const SignUp(),
        });
  }
}
