import 'package:compitax/Layouts/Auth/SocialSign.dart';
import 'package:compitax/Layouts/LangSelect.dart';
import 'package:compitax/Layouts/MainBoard/MainBoard.dart';
import 'package:compitax/Layouts/MyBookings/MyBookings.dart';
import 'package:compitax/Layouts/Settings/Settings.dart';
import 'package:compitax/Layouts/SharedApp/ShareApp.dart';
import 'package:compitax/Layouts/XSplash.dart';

import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';
import 'Layouts/Auth/SignIn.dart';
import 'Layouts/Auth/SignUp.dart';
import 'Layouts/Splash.dart';

void main() => runApp(MyApp());

final ThemeData _kTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
        primary: GlobalColors.primary, secondary: GlobalColors.secondary),
    textTheme: _buildTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: GlobalColors.info,
    ),
    // inputDecorationTheme: const InputDecorationTheme(
    //   border: CutCornersBorder(),
    //   focusedBorder: CutCornersBorder(
    //     borderSide: BorderSide(
    //       width: 2.0,
    //       color: kBrown900,
    //     ),
    //   ),
    //   floatingLabelStyle: TextStyle(
    //     color: kBrown900,
    //   ),
    // ),
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline5: base.headline5!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        headline6: base.headline6!.copyWith(
          fontSize: 18.0,
        ),
        caption: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
          // fontFamily: 'Rubik',
          // displayColor: kBrown900,
          // bodyColor: kBrown900,
          );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isAuth = true;

    // ignore: non_constant_identifier_names
    Widget SecureRender(Widget page) {
      // ignore: dead_code
      if (!isAuth) {
        return const Splash(navigator: SignIn());
      }
      // ignore: dead_code
      else {
        return page;
      }
    }

    return MaterialApp(
        title: 'CompiTax',
        theme: _kTheme,
        initialRoute: "/share_app",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/onboarding': (BuildContext context) => const XSplash(
                navigator: LangSelect(),
              ),
          "/lang_select": (BuildContext context) => const LangSelect(),
          "/social_sign": (BuildContext context) => const SocialSign(),
          "/sign_in": (BuildContext context) => const SignIn(),
          "/sign_up": (BuildContext context) => const SignUp(),
          "/main": (BuildContext context) => SecureRender(const MainBoard()),
          "/my_bookings": (BuildContext context) =>
              SecureRender(const MyBookings()),
          "/settings": (BuildContext context) => SecureRender(const Settings()),
          "/share_app": (BuildContext context) => SecureRender(const ShareApp()),
        });
  }
}
