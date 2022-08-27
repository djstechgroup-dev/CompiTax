// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/rating/RatingAppbar.dart';
import 'package:compitax/widgets/rating/CustomRating.dart';
import 'package:compitax/widgets/rating/RatingModeRadio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  late GetStorage __store;
  late double rating_num;
  late int rating_mode;
  late IconData selected_icon;

  @override
  void initState() {
    super.initState();
    __store = GetStorage('compitax_data');

    rating_num = __store.read('rating')['num'] ?? 1.0;
    rating_mode = __store.read('rating')['mode'] ?? 1;
    // selected_icon = __store.read('rating')['icon'] ?? Icons.star;
    selected_icon = Icons.star;
  }

  void chageNumCallback(double num) {
    setState(() {
      rating_num = num;
    });
  }

  void chageModeCallback(int mode) {
    setState(() {
      rating_mode = mode;
    });
  }

  void chageIconAndResetModeCallback(IconData icon) {
    setState(() {
      rating_mode = 1;
      selected_icon = icon;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('==================================================');
    print(__store.read('rating'));
    print('-----------------------------------------------');
    print('num : $rating_num,   mode : $rating_mode,   icon: $selected_icon');

    return AppLayout(
      appbar: RatingAppbar(
          title: '',
          storage: __store,
          chageIconAndResetModeCallback: chageIconAndResetModeCallback),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(children: [
                    const Text(
                      'Tap To Rate',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    CustomRating(
                        ratingNum: rating_num,
                        ratingMode: rating_mode,
                        selectedIcon: selected_icon,
                        chageNumCallback: chageNumCallback),
                    Text(
                      'Rating: $rating_num',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
                const SizedBox(height: 40.0),
                Column(
                  children: const [
                    Text(
                      'Write a review (optional)',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        minLines: 10,
                        maxLines: 15,
                        maxLength: 500,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Type your review",
                          // prefixIcon: Icon(Icons.reviews_outlined),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  'Rating Bar Modes',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 3, color: GlobalColors.black.withOpacity(0.8)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingModeRadio(
                          value: 1,
                          groupVal: rating_mode,
                          storage: __store,
                          chageModeCallback: chageModeCallback),
                      // RatingModeRadio(value: 2, groupVal: _ratingBarMode, storage: __store, chageModeCallback: chageModeCallback),
                      RatingModeRadio(
                          value: 3,
                          groupVal: rating_mode,
                          storage: __store,
                          chageModeCallback: chageModeCallback),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
