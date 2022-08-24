import 'package:compitax/widgets/layout/LeftSideDrawer.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final String? title;
  final AppBar? appbar;
  final Widget? body;
  const AppLayout({Key? key, this.title, this.appbar, this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar ?? AppBar(title: Text(title ?? "")),
      drawer: const LeftSideDrawer(),
      body: body,
    );
  }
}
