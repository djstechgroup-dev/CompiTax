import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  final String? title;
  final Widget? body;
  const SettingCard({Key? key, this.title, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != '')
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                title!,
                style: const TextStyle(fontSize: 24),
              ),
            ),
          const Divider(
            color: Colors.black,
            height: 10,
            indent: 5,
            endIndent: 5,
            thickness: 2,
          ),
          Container(child: body)
        ],
      ),
    );
  }
}
