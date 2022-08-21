import 'package:flutter/material.dart';

ButtonStyle styleGenerator(Color color) {
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(color),
    overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return color.withOpacity(0.04);
        }
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) {
          return color.withOpacity(0.12);
        }
        return null; // Defer to the widget's default.
      },
    ),
  );
}
