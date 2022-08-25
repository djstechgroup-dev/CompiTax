import 'package:awesome_dialog/awesome_dialog.dart';
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

    return TextButton(
        onPressed: () {
          AwesomeDialog(
            context: context,
            dialogType: DialogType.INFO,
            animType: AnimType.BOTTOMSLIDE,
            title: 'XXX',
            body: Wrap(
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
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
          ).show();
        },
        child: Text('XXX'));
  }
}
