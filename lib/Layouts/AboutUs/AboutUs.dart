import 'package:compitax/widgets/layout/LeftSideDrawer.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      appbar: TitleAppbar(title: 'ABOUT US'),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Welcome to Taxi Comparison Service!\n We're the essential Top Services Provider base on online services as well as offline car rental services.Just open the app and enter where you want to go, and a nearby driver will help you get there reliably. Request a ride from 600+ airports and in 10,000+ cities around the world, the Uber app is a great way to make your travel plans stress-free. Request a ride on demand or schedule one ahead of time.",
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 150)
          ])),
    );
  }
}
