import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

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
