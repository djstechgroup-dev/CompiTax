import 'package:compitax/widgets/layout/LeftSideDrawer.dart';
import 'package:flutter/material.dart';

class Mainlayout extends StatelessWidget {
  final String? title;
  final Widget? body;
  const Mainlayout({Key? key, this.title, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title ?? "")),
      drawer: LeftSideDrawer(),
      body: body,
    );
  }
}
