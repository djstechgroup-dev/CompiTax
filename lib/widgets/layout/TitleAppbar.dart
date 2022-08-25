import 'package:flutter/material.dart';

class TitleAppbar extends StatelessWidget {
  final String title;
  const TitleAppbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title));
  }
}
