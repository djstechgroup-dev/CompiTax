import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

class ZigzagDivider extends StatefulWidget {
  final Color? color;
  final double? width;
  const ZigzagDivider({Key? key, this.color, this.width}) : super(key: key);

  @override
  _ZigzagDividerState createState() => _ZigzagDividerState();
}

class _ZigzagDividerState extends State<ZigzagDivider> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Image.asset('assets/imgs/extra/_border_l.png',
            color: widget.color ?? GlobalColors.secondary,
            width: widget.width ?? MediaQuery.of(context).size.width));
  }
}
