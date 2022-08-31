import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

SnackBar showSnackBar(
    {@required BuildContext? context,
    @required String? message,
    bool? isError}) {
  SnackBar snackBar = SnackBar(
    content: Text(
      message!,
      style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
    ),
    duration: const Duration(seconds: 3),
    backgroundColor:
        (isError == true) ? GlobalColors.success : GlobalColors.error,
    // width: MediaQuery.of(context!).size.width,
    padding: const EdgeInsets.symmetric(horizontal: 20),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    action: SnackBarAction(
      label: 'Undo',
      textColor: GlobalColors.white,
      onPressed: () {},
    ),
    // animation: (),
  );
  // ScaffoldMessenger.of(context!).showSnackBar(snackBar);
  return snackBar;
}
