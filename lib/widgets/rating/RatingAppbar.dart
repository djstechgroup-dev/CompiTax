import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/IconAlert.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class RatingAppbar extends StatelessWidget {
  final String title;
  final GetStorage storage;
  final dynamic chageIconAndResetModeCallback;

  const RatingAppbar(
      {Key? key,
      required this.title,
      required this.storage,
      this.chageIconAndResetModeCallback})
      : super(key: key);

  void _handleChangeRatingIconAndResetMode(IconData icon) {
    var data = storage.read('rating');
    storage.write('rating', {
      'num': data['name'], 'mode': 1,
      // 'icon': data['icon']
    });

    if (chageIconAndResetModeCallback != null) {
      chageIconAndResetModeCallback(icon);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          color: GlobalColors.white,
          onPressed: () async {
            IconData? result = await showDialog<IconData>(
              context: context,
              builder: (context) => const IconAlert(),
            );
            _handleChangeRatingIconAndResetMode(result!);
          },
        ),
      ],
    );
  }
}
