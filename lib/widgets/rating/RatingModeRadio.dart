import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class RatingModeRadio extends StatelessWidget {
  final int value;
  final int groupVal;
  final GetStorage storage;
  final dynamic chageModeCallback;

  const RatingModeRadio(
      {Key? key,
      required this.value,
      required this.groupVal,
      required this.storage,
      this.chageModeCallback})
      : super(key: key);

  void _handleChangeRatingMode(int? mode) {
    var data = storage.read('rating');
    storage.write('rating', {
      'num': data['num'], 'mode': mode,
      // 'icon': data['icon']
    });
    if (chageModeCallback != null) {
      chageModeCallback(mode);
    }
  }

  @override
  Widget build(BuildContext context) {
    String strRadioMod = 'Face';
    switch (value) {
      case 3:
        strRadioMod = 'Face';
        break;
      case 1:
      default:
        strRadioMod = 'Star';
        break;
    }

    return Expanded(
      child: RadioListTile<int>(
        value: value,
        groupValue: groupVal,
        dense: true,
        title: Text(
          'Rating Mode : $strRadioMod',
          style: const TextStyle(
            fontSize: 12.0,
          ),
        ),
        onChanged: _handleChangeRatingMode,
      ),
    );
  }
}
