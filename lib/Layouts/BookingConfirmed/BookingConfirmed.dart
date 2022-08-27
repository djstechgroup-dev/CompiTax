// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/BottomBar.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:compitax/widgets/rating/CustomRating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get_storage/get_storage.dart';

class BookingConfirmed extends StatefulWidget {
  const BookingConfirmed({Key? key}) : super(key: key);

  @override
  _BookingConfirmedState createState() => _BookingConfirmedState();
}

class _BookingConfirmedState extends State<BookingConfirmed> {
  @override
  Widget build(BuildContext context) {
    GetStorage __store = GetStorage('compitax_data');
    double rating_num = __store.read('rating')['num'] ?? 1.0;
    int rating_mode = __store.read('rating')['mode'] ?? 1;
    // IconData selected_icon = __store.read('rating')['icon'] ?? Icons.star;
    IconData selected_icon = Icons.star;

    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    return AppLayout(
      appbar: const TitleAppbar(title: 'BOOKING CONFIRMED'),
      body: Column(children: [
        Expanded(
            child:
                Container(color: GlobalColors.info, width: deviceSize.width)),
        // Container(
        //     child:
        Column(children: [
          Container(
              color: GlobalColors.grey,
              padding: const EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Your driver will come in 3 mins.',
                        style:
                            TextStyle(color: GlobalColors.white, fontSize: 22))
                  ])),
          Container(
              color: GlobalColors.bgColorScreen,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Material(
                                shape: const CircleBorder(
                                  side: BorderSide.none,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: GlobalColors.white,
                                  radius: deviceSize.width / 10,
                                  backgroundImage:
                                      const AssetImage('assets/imgs/user1.jpg'),
                                ))),
                        // Image.asset(
                        //   'assets/imgs/user1.jpg',
                        //   width: deviceSize.width / 5,
                        // ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            const Text('Piyush Sharma'),
                            const SizedBox(height: 10),
                            // CustomRating(
                            //     itemSize: 20,
                            //     ratingNum: rating_num,
                            //     ratingMode: rating_mode,
                            //     selectedIcon: selected_icon),
                            RatingBar.builder(
                              initialRating: rating_num,
                              minRating: 0.5,
                              allowHalfRating: true,
                              unratedColor: GlobalColors.rating.withAlpha(50),
                              itemCount: 5,
                              itemSize: 30.0,
                              itemBuilder: (context, _) => Icon(
                                selected_icon,
                                color: GlobalColors.rating,
                              ),
                              onRatingUpdate: (double num) {
                                __store.write('rating', {
                                  'num': num,
                                  'mode': rating_mode,
                                  // 'icon': widget.selectedIcon
                                });
                              },
                              updateOnDrag: true,
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(children: [
                          Text('Maruti Ritz', style: textTheme.bodyText1),
                          const SizedBox(height: 10),
                          Text('RJ14 SW 4567', style: textTheme.bodyText1)
                        ]))
                  ])),
          const BottomBar()
        ])
        // )
      ]),
    );
  }
}
