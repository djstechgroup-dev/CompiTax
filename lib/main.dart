import 'package:compitax/Layouts/AboutUs/AboutUs.dart';
import 'package:compitax/Layouts/Auth/SocialSign.dart';
import 'package:compitax/Layouts/BookingConfirmed/BookingConfirmed.dart';
import 'package:compitax/Layouts/BookingDetails/BookingDetails.dart';
import 'package:compitax/Layouts/ContactUs/ContactUs.dart';
import 'package:compitax/Layouts/Home.dart';
import 'package:compitax/Layouts/LangSelect.dart';
import 'package:compitax/Layouts/MainBoard/MainBoard.dart';
import 'package:compitax/Layouts/MyAccount/MyAccount.dart';
import 'package:compitax/Layouts/TripHistory/TripHistory.dart';
import 'package:compitax/Layouts/Providers/Providers.dart';
import 'package:compitax/Layouts/Rating/Rating.dart';
import 'package:compitax/Layouts/Settings/Settings.dart';
import 'package:compitax/Layouts/SharedApp/ShareApp.dart';
import 'package:compitax/Layouts/Support/Support.dart';
import 'package:compitax/Layouts/YourBill/YourBill.dart';
import 'package:compitax/__test.dart';
import 'package:flutter/material.dart';
import 'package:compitax/Layouts/Auth/SignIn.dart';
import 'package:compitax/Layouts/Auth/SignUp.dart';
import 'package:compitax/Layouts/Splash.dart';
import 'package:compitax/Layouts/XSplash.dart';

import 'package:compitax/theme/colors.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init('compitax_data');
  runApp(MyApp());
}

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
        // headline1: base.headline1!.copyWith(
        //   fontSize: 18.0,
        // ),
        // headline2: base.headline2!.copyWith(
        //   fontSize: 18.0,
        // ),
        // headline3: base.headline3!.copyWith(
        //   fontSize: 18.0,
        // ),
        // headline4: base.headline4!.copyWith(
        //   fontSize: 18.0,
        // ),
        // headline5: base.headline5!.copyWith(
        //   fontSize: 18.0,
        // ),
        // headline6: base.headline6!.copyWith(
        //   fontSize: 18.0,
        // ),
        caption: base.caption!.copyWith(
          fontFamily: 'OpenSans',
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
        bodyText2: base.bodyText2!.copyWith(
          fontFamily: 'WorkSans',
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
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
        initialRoute: "/main",
        // initialRoute: "/onboarding",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/__test': (BuildContext context) => const Test__(),
          '/onboarding': (BuildContext context) => const Splash(
                navigator: LangSelect(),
              ),
          "/lang_select": (BuildContext context) => const LangSelect(),
          "/social_sign": (BuildContext context) => const SocialSign(),
          "/sign_in": (BuildContext context) => const SignIn(),
          "/sign_up": (BuildContext context) => const SignUp(),
          "/home": (BuildContext context) => SecureRender(const Home()),
          "/main": (BuildContext context) => SecureRender(const MainBoard()),
          "/trip_history": (BuildContext context) =>
              SecureRender(const TripHistory()),
          "/settings": (BuildContext context) => SecureRender(const Settings()),
          "/share_app": (BuildContext context) =>
              SecureRender(const ShareApp()),
          "/rating": (BuildContext context) => SecureRender(const Rating()),
          "/contact_us": (BuildContext context) =>
              SecureRender(const Contactus()),
          "/about_us": (BuildContext context) => SecureRender(const AboutUs()),
          "/support": (BuildContext context) => SecureRender(const Support()),
          "/booking_detail": (BuildContext context) =>
              SecureRender(const BookingDetails()),
          "/your_bill": (BuildContext context) =>
              SecureRender(const YourBill()),
          "/booking_confirmed": (BuildContext context) =>
              SecureRender(const BookingConfirmed()),
          "/providers": (BuildContext context) =>
              SecureRender(const Providers()),
          "/my_account": (BuildContext context) =>
              SecureRender(const MyAccount()),
        });
  }
}
