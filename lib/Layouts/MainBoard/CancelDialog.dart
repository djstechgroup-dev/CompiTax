import 'package:flutter/material.dart';

class CancelDialog extends StatelessWidget {
  const CancelDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> reasonText = [
      'Waiting time is too long.',
      'Change of Plan',
      'Got another taxi',
      'Taxi did not arrive',
      'Other reason'
    ];

    return AlertDialog(
      title: Container(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          children: [
            Text(
              'Why made you cancel the ride?',
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            ),
            Text(
              'Please let us know for the improvement',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      titlePadding: const EdgeInsets.all(10),
      contentPadding: const EdgeInsets.all(10),
      content: Wrap(
        children: reasonText
            .map((e) => Row(children: [
                  TextButton(
                      child: Text(
                        e,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      onPressed: () => Navigator.pop(context, e)),
                ]))
            .toList(),
      ),

      //  // action buttons
      // actions: [
      //   FlatButton(
      //     textColor: Colors.black,
      //     onPressed: () {},
      //     child: Text('CANCEL'),
      //   ),
      //   FlatButton(
      //     textColor: Colors.black,
      //     onPressed: () {},
      //     child: Text('ACCEPT'),
      //   ),
      // ],
    );
  }
}
