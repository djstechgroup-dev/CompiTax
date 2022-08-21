import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

class Inputcontainer extends StatelessWidget {
  final Widget child;
  const Inputcontainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          border: Border.all(color: GlobalColors.initial, width: 2),
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: GlobalColors.initial,
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
        child: child);
  }
}
