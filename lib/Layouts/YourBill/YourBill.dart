// ignore_for_file: avoid_print, non_constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/rating/RatingAppbar.dart';
import 'package:compitax/widgets/rating/CustomRating.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class YourBill extends StatelessWidget {
  const YourBill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetStorage __store = GetStorage('compitax_data');
    double rating_num = __store.read('rating')['num'] ?? 1.0;
    int rating_mode = __store.read('rating')['mode'] ?? 1;
    // IconData selected_icon = __store.read('rating')['icon'] ?? Icons.star;
    IconData selected_icon = Icons.star;

    print('==================================================');
    print(__store.read('rating'));

    return AppLayout(
        appbar: RatingAppbar(title: 'Flutter Rating Bar', storage: __store),
        body: CustomRating(
            ratingNum: rating_num,
            ratingMode: rating_mode,
            selectedIcon: selected_icon));
  }
}
