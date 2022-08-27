// ignore_for_file: avoid_print, non_constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/BottomBar.dart';
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

    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    double avatarRadius = deviceSize.width / 8;
    double avatarBorderThickness = 4.0;
    double avatarPaddingInside = 8;
    double avatarPaddingOutside = 4;
    double borderRadiusInside =
        avatarRadius + avatarPaddingInside + avatarBorderThickness;
    double borderRadiusOutside = avatarRadius +
        avatarPaddingOutside +
        avatarPaddingInside +
        avatarBorderThickness;

    return AppLayout(
      appbar: RatingAppbar(title: 'YOUR BILL', storage: __store),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // $2.0 discount applied
                Container(
                  color: GlobalColors.info,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/imgs/extra/check.png'),
                      const SizedBox(width: 15),
                      Text('\$2.0 discount applied', style: textTheme.caption)
                    ],
                  ),
                ),
                // total_price  &&  from_to view  &&  paid_stamp
                Stack(children: [
                  Column(
                    children: [
                      // $32 the total fare   &&   border decoration
                      Container(
                        color: GlobalColors.white,
                        child: Column(
                          children: [
                            const SizedBox(height: 15),
                            const Text(
                              '\$32.0',
                              style: TextStyle(
                                  color: GlobalColors.primary,
                                  fontSize: 60,
                                  fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset('assets/imgs/extra/_border_l.png',
                                    width: deviceSize.width)
                              ],
                            ),
                          ],
                        ),
                      ),
                      // [from]-----  CarIcon  -----[to]
                      Container(
                          color: GlobalColors.bgColorScreen,
                          child: Column(children: [
                            Row(
                              children: [
                                const SizedBox(width: 30),
                                Image.asset(
                                  'assets/imgs/extra/_from.png',
                                  width: deviceSize.width / 24,
                                ),
                                Expanded(
                                    child: Image.asset(
                                        'assets/imgs/extra/_dashed_l.png')),
                                const SizedBox(width: 10),
                                Column(children: [
                                  const Icon(Icons.local_taxi, size: 30),
                                  Text('Micro', style: textTheme.bodyText1)
                                ]),
                                const SizedBox(width: 10),
                                Expanded(
                                    child: Image.asset(
                                        'assets/imgs/extra/_dashed_l.png')),
                                Image.asset(
                                  'assets/imgs/extra/_to.png',
                                  width: deviceSize.width / 24,
                                ),
                                const SizedBox(width: 30)
                              ],
                            ),
                            Row(children: [
                              const Spacer(),
                              Expanded(
                                  flex: 5,
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Text(
                                        'Bus Stand, Dehiwala-Mount, Lavinia, Sri Lanka',
                                        style: textTheme.caption,
                                        textAlign: TextAlign.center,
                                      ))),
                              const Spacer(),
                              Expanded(
                                  flex: 5,
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Text(
                                        'Padukka Bus Station, Sri Lanka',
                                        style: textTheme.caption,
                                        textAlign: TextAlign.center,
                                      ))),
                              const Spacer()
                            ])
                          ])),
                    ],
                  ),
                  Positioned(
                      top: deviceSize.width * 1 / 24,
                      right: deviceSize.width * 1 / 24,
                      child: Image.asset(
                        'assets/imgs/extra/paidByOlaMoney.png',
                        // color: GlobalColors.success,
                        height: deviceSize.width / 3,
                      ))
                ]),

                // padding
                Container(height: 20, color: GlobalColors.bgColorScreen),

                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: borderRadiusOutside,
                          decoration: const BoxDecoration(
                              color: GlobalColors.bgColorScreen,
                              border: Border(
                                  bottom: BorderSide(
                                      width: 4.0, color: GlobalColors.border))),
                        ),

                        // [how was your ride?] && rating
                        Container(
                          width: deviceSize.width,
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 4.0, color: GlobalColors.border)),
                            boxShadow: [
                              BoxShadow(
                                color: GlobalColors.border,
                                offset: Offset(
                                  0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 5.0,
                              ),
                              BoxShadow(
                                color: GlobalColors.white,
                                offset: Offset(
                                  0,
                                  0,
                                ),
                                blurRadius: 0,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: borderRadiusOutside),
                              const SizedBox(height: 10),
                              const Text('How was your ride?',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900)),
                              const SizedBox(height: 20),
                              CustomRating(
                                  ratingNum: rating_num,
                                  ratingMode: rating_mode,
                                  selectedIcon: selected_icon),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                    // rounded image
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Material(
                          shape: const CircleBorder(
                            side: BorderSide.none,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(avatarPaddingOutside),
                            decoration: BoxDecoration(
                              color: GlobalColors.white,
                              borderRadius: BorderRadius.circular(
                                  borderRadiusOutside * 2),
                            ),
                            child: Container(
                                padding: EdgeInsets.all(avatarPaddingInside),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: GlobalColors.border,
                                      width: avatarBorderThickness),
                                  borderRadius: BorderRadius.circular(
                                      borderRadiusInside * 2),
                                ),
                                child: CircleAvatar(
                                  backgroundColor: GlobalColors.white,
                                  radius: avatarRadius,
                                  // child: Image.asset(
                                  //     'assets/imgs/app_logos/logo.png',
                                  //     width: avatarRadius * 2),
                                  backgroundImage: const AssetImage(
                                      'assets/imgs/app_logos/logo.png'),
                                )),
                          ))
                    ]),
                  ],
                )
              ],
            ),
          ),
          const BottomBar(),
        ],
      ),
    );
  }
}
