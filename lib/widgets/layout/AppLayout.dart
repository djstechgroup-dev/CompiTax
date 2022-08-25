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

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50), child: appbar!),
      drawer: const LeftSideDrawer(),
      body: body,
    );
  }
}
