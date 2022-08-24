import 'package:compitax/widgets/layout/LeftSideDrawer.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      title: 'ABOUT US',
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            "Welcome to Taxi Comparison Service!\n We're the essential Top Services Provider base on online services as well as offline car rental services.",
            style: Theme.of(context).textTheme.headline5,
          )),
    );
  }
}
