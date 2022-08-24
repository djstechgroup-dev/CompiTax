import 'package:compitax/theme/colors.dart';
import 'package:compitax/utilities.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
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

    return AppLayout(
        title: 'BOOKING DETAILS',
        body: Container(
            color: GlobalColors.bgColorScreen,
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Pickup Location',
                              style: Theme.of(context).textTheme.headline6),
                          const Text(
                              'Bus Stand, Dehiwala-Mount, Lavinia, SriLanka',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center),
                          Stack(children: [
                            Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width - 30,
                              margin: EdgeInsets.symmetric(
                                  vertical: headerIconRadius),
                              padding: EdgeInsets.only(
                                  top: headerIconRadius + 5 + 20),
                              color: GlobalColors.white,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                  '1234567890-0987654321')))
                                    ],
                                  ),
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
