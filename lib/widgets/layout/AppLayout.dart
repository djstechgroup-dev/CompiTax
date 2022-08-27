import 'package:compitax/widgets/layout/LeftSideDrawer.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final Widget? appbar;
  final Widget? body;
  const AppLayout({Key? key, this.appbar, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // void _handleDrawerButton() {
    //   Scaffold.of(context).openDrawer();
    // }

    // void _handleDrawerButtonEnd() {
    //   Scaffold.of(context).openEndDrawer();
    // }

    double height = appbar != null ? 50 : 0;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(height), child: appbar ?? Container()),
      drawer: const LeftSideDrawer(),
      body: body,
    );
  }
}
