import 'package:another_flushbar/flushbar.dart';
import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomSnackBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    // showFloatingFlushbar(
                    //     context: context,
                    //     message: 'Custom Snackbar!',
                    //     isError: false);
                    showSnackBar(
                        context: context,
                        message: 'Custom Snackbar!',
                        isError: false);
                  },
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: const BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: const Center(
                      child: Text(
                        "Custom SnackBar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

void showFloatingFlushbar(
    {@required BuildContext? context,
    @required String? message,
    bool? isError}) {
  Flushbar? flush;
  bool? _wasButtonClicked;
  flush = Flushbar<bool>(
    
    title: "Hey User",
    message: message,
    backgroundColor:
        (isError == true) ? GlobalColors.success : GlobalColors.error,
    duration: const Duration(seconds: 3),
    margin: const EdgeInsets.all(20),
    icon: const Icon(
      Icons.info_outline,
      color: GlobalColors.white,
    ),
    mainButton: TextButton(
      onPressed: () {
        flush!.dismiss(true); // result = true
      },
      child: const Text(
        "ADD",
        style: TextStyle(color: GlobalColors.info),
      ),
    ),
  ) // <bool> is the type of the result passed to dismiss() and collected by show().then((result){})
    ..show(context!).then((result) {
      print(result);
    });
}

void showSnackBar(
    {@required BuildContext? context,
    @required String? message,
    bool? isError}) {
  final snackBar = SnackBar(
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
  ScaffoldMessenger.of(context!).showSnackBar(snackBar);
}
