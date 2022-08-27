// ignore_for_file: use_build_context_synchronously

import 'package:compitax/Layouts/MainBoard/CancelDialog.dart';
import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    TextStyle textStyle = const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w700, color: GlobalColors.white);

    return Container(
      color: GlobalColors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact_us');
                  },
                  child: Column(
                    children: [
                      const Icon(Icons.phone, size: 30),
                      Text('Contact', style: textStyle)
                    ],
                  ))),
          Expanded(
              child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      const Icon(Icons.local_taxi, size: 30),
                      Text('Teack Car', style: textStyle)
                    ],
                  ))),
          Expanded(
              child: TextButton(
                  onPressed: () async {
                    String? result = await showDialog<String>(
                      context: context,
                      builder: (context) => const CancelDialog(),
                    );
                    if (result != null) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(result)));
                    }
                  },
                  child: Column(
                    children: [
                      const Icon(Icons.cancel, size: 30),
                      Text('Cancel', style: textStyle)
                    ],
                  )))
        ],
      ),
    );
  }
}
