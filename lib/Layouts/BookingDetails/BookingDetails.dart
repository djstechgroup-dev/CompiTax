import 'package:compitax/theme/colors.dart';
import 'package:compitax/utilities.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:flutter/material.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({Key? key}) : super(key: key);

  @override
  _BookingDetailsState createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    double headerIconRadius = deviceSize.width / 10;

    TextTheme textTheme = Theme.of(context).textTheme;

    return AppLayout(
        appbar: const TitleAppbar(title: 'BOOKING DETAILS'),
        body: Container(
            color: GlobalColors.bgColorScreen,
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Pickup Location',
                              style: Theme.of(context).textTheme.headline6),
                          const Text(
                              'Bus Stand, Dehiwala-Mount, Lavinia, SriLanka',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center),
                          const SizedBox(height: 30),
                          Stack(children: [
                            Container(
                              width: MediaQuery.of(context).size.width - 20,
                              margin: EdgeInsets.symmetric(
                                  vertical: headerIconRadius),
                              padding: EdgeInsets.only(
                                  top: headerIconRadius + 5 + 20,
                                  // left: 15,
                                  // right: 15,
                                  bottom: 20),
                              decoration: const BoxDecoration(
                                color: GlobalColors.white,
                                border: Border(
                                    bottom: BorderSide(
                                        width: 5, color: GlobalColors.border),
                                    left: BorderSide(
                                        width: 3, color: GlobalColors.border),
                                    right: BorderSide(
                                        width: 3, color: GlobalColors.border)),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text('Cab Type: ',
                                                  style: textTheme.caption),
                                              Text('Hatchback',
                                                  style: textTheme.headline6),
                                            ]),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              const Icon(
                                                  Icons.watch_later_outlined),
                                              Text('1 minute',
                                                  style: textTheme.headline6),
                                              Text('(s) away',
                                                  style: textTheme.caption),
                                            ]),
                                      )
                                    ],
                                  ),
                                  const Divider(
                                      height: 40,
                                      thickness: 1,
                                      color: GlobalColors.border),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Column(
                                            children: [
                                              Text('\$10.0',
                                                  style: textTheme.headline6),
                                              Text('For first 4km',
                                                  style: textTheme.caption),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text('\$1.0',
                                                style: textTheme.headline6),
                                            Text('Per km',
                                                style: textTheme.caption),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 10),
                                          child: Column(
                                            children: [
                                              Text('\$0.5',
                                                  style: textTheme.headline6),
                                              Text('Per min',
                                                  style: textTheme.caption),
                                            ],
                                          ),
                                        )
                                      ]),
                                  const Divider(
                                      height: 40,
                                      thickness: 1,
                                      color: GlobalColors.border),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text('Coupon Code',
                                              style: textTheme.caption),
                                        ),
                                        Text('COLOMBO20',
                                            style: textTheme.headline6),
                                        const Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Icon(Icons.create))
                                      ]),
                                ],
                              ),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Material(
                                    shape: const CircleBorder(
                                      side: BorderSide.none,
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor:
                                          GlobalColors.bgColorScreen,
                                      radius: headerIconRadius + 5,
                                      child: Image.asset(
                                          'assets/imgs/app_logos/logo.png',
                                          width: headerIconRadius * 2),
                                    ),
                                  )
                                ]),
                          ]),
                          const Text('Booking details will be sent to',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center),
                          const SizedBox(height: 10),
                          TextButton(
                              onPressed: () {},
                              style: btnStyleGenerator(GlobalColors.secondary),
                              child: const Text(
                                '+971501625427',
                                style: TextStyle(
                                    color: GlobalColors.white, fontSize: 20),
                              ))
                        ],
                      ))),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                      child: Container(
                          // color: GlobalColors.primary,
                          child: TextButton(
                              onPressed: () {},
                              style: btnStyleGenerator(GlobalColors.primary),
                              child: const Text(
                                'BOOK',
                                style: TextStyle(
                                    color: GlobalColors.white, fontSize: 20),
                              ))))
                ],
              ),
            ])));
  }
}
