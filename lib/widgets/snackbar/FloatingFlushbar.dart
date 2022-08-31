import 'package:another_flushbar/flushbar.dart';
import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

// class FloatingFlushbar extends StatefulWidget {
//   final String? message;
//   final bool? isError;
//   const FloatingFlushbar({Key? key, required this.message, this.isError})
//       : super(key: key);

//   @override
//   _FloatingFlushbarState createState() => _FloatingFlushbarState();
// }

// class _FloatingFlushbarState extends State<FloatingFlushbar> {
//   late bool? _wasButtonClicked;

//   @override
//   Widget build(BuildContext context) {
//     Flushbar? flush;
//     flush = Flushbar<bool>(
//       title: "Hey User",
//       message: widget.message,
//       backgroundColor:
//           (widget.isError == true) ? GlobalColors.success : GlobalColors.error,
//       duration: const Duration(seconds: 3),
//       margin: const EdgeInsets.all(20),
//       icon: const Icon(
//         Icons.info_outline,
//         color: GlobalColors.white,
//       ),
//       mainButton: TextButton(
//         onPressed: () {
//           flush!.dismiss(true); // result = true
//         },
//         child: const Text(
//           "ADD",
//           style: TextStyle(color: GlobalColors.info),
//         ),
//       ),
//     );

//     return flush;
//   }
// }
Flushbar showFloatingFlushbar(
    {@required BuildContext? context,
    @required String? message,
    bool? isError}) {
  Flushbar? flush;
  // bool? _wasButtonClicked;
  flush = Flushbar<bool?>(
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
  );
  // ..show(context!).then((result) {
  //     print(result);
  //   });

  return flush;
}
