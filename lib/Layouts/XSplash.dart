//   Timer(
//       const Duration(seconds: 3),
//       () => Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => LangSelect())));
// }

import 'dart:async';

import 'package:compitax/Layouts/LangSelect.dart';
import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class XSplash extends StatefulWidget {
  final Widget? navigator;
  const XSplash({Key? key, required this.navigator}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<XSplash> {
  late GetStorage __store;
  int splashtime = 3;
  // duration of splash screen on second

  @override
  void initState() {
    super.initState();

    __store = GetStorage('compitax_data');
    __store.write('lang', 'English');
    __store.write('rating', {
      'num': 1.0, 'mode': 1,
      //  'icon': Icons.star
    });

    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => widget.navigator!));
    });
  }

  Future<Widget> loadFromFuture() async {
    // Fetch any value from server
    return Future.value(const LangSelect());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: GlobalColors.bgColorScreen,
          border:
              Border.all(width: 3, color: GlobalColors.black.withOpacity(0.8)),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: GlobalColors.primary,
              offset: Offset(
                0,
                5.0,
              ),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            )
          ],
        ),
        child: Image.asset('assets/imgs/app_logos/logo.png',
            // fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width * 2 / 3),
      ),
    );
  }
}
