// ignore_for_file: non_constant_identifier_names

import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:flutter/material.dart';

class BookingDataType {
  String transaction_id = '';
  String company = '';
  String from_where = '';
  String to_where = '';
  String leaved_time = '';
  String arrived_time = '';
  String price = '';
  String current_state = '';

  BookingDataType(
      String transaction_id,
      String company,
      String from_where,
      String to_where,
      String leaved_time,
      String arrived_time,
      String price,
      String current_state) {
    this.transaction_id = transaction_id;
    this.company = company;
    this.from_where = from_where;
    this.to_where = to_where;
    this.leaved_time = leaved_time;
    this.arrived_time = arrived_time;
    this.price = price;
    this.current_state = current_state;
  }
}

List<BookingDataType> bookings_data = [
  BookingDataType(
      'Mini, CRN 34567098765',
      'company1',
      'Dafferin Road, Maidan, Kolkata',
      'Kolkata',
      'Mon, Dec 12, 04:19 PM',
      '12.00',
      '\$21',
      'active'),
  BookingDataType(
      'Mini, CRN 34567098765',
      'company1',
      'Dafferin Road, Maidan, Kolkata',
      'Kolkata',
      'Mon, Dec 12, 04:19 PM',
      '12.00',
      '\$21',
      'cancelled'),
  BookingDataType(
      'Mini, CRN 34567098765',
      'company1',
      'Dafferin Road, Maidan, Kolkata',
      'Kolkata',
      'Mon, Dec 12, 04:19 PM',
      '12.00',
      '\$21',
      'completed'),
  BookingDataType(
      'Mini, CRN 34567098765',
      'company1',
      'Dafferin Road, Maidan, Kolkata',
      'Kolkata',
      'Mon, Dec 12, 04:19 PM',
      '12.00',
      '\$21',
      'completed'),
  BookingDataType(
      'Mini, CRN 34567098765',
      'company1',
      'Dafferin Road, Maidan, Kolkata',
      'Kolkata',
      'Mon, Dec 12, 04:19 PM',
      '12.00',
      '\$21',
      'cancelled'),
  BookingDataType(
      'Mini, CRN 34567098765',
      'company1',
      'Dafferin Road, Maidan, Kolkata',
      'Kolkata',
      'Mon, Dec 12, 04:19 PM',
      '12.00',
      '\$21',
      'cancelled'),
  BookingDataType(
      'Mini, CRN 34567098765',
      'company1',
      'Dafferin Road, Maidan, Kolkata',
      'Kolkata',
      'Mon, Dec 12, 04:19 PM',
      '12.00',
      '\$21',
      'active')
];





class TripHistory extends StatefulWidget {
  const TripHistory({Key? key}) : super(key: key);

  @override
  _TripHistoryState createState() => _TripHistoryState();
}

class _TripHistoryState extends State<TripHistory> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return AppLayout(
      appbar: const TitleAppbar(title: 'MY BOOKINGS'),
      body: ListView.separated(
        // padding: const EdgeInsets.all(5),
        itemCount: bookings_data.length,
        itemBuilder: (BuildContext context, int index) {
          BookingDataType data = bookings_data[index];
          return TripCard(data: data);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.black,
          height: 5,
          indent: 5,
          endIndent: 5,
          thickness: 2,
        ),
      ),
    );
  }
}

class TripCard extends StatefulWidget {
  final BookingDataType data;
  const TripCard({Key? key, required this.data}) : super(key: key);

  @override
  _TripCardState createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    BookingDataType data = widget.data;
    dynamic stateColor;
    String stampPath = '';
    switch (data.current_state) {
      case 'cancelled':
        stateColor = GlobalColors.error.withOpacity(0.9);
        stampPath = 'assets/imgs/stamp/_cancelled.png';
        break;
      case 'completed':
        stateColor = GlobalColors.success.withOpacity(0.9);
        stampPath = 'assets/imgs/stamp/_completed.png';
        break;
      case 'active':
        // stateColor = GlobalColors.info.withOpacity(0.9);
        // stampPath = 'assets/imgs/stamp/_active.png';
        stateColor = null;
        stampPath = '';
        break;
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            padding: const EdgeInsets.all(10),
            color: GlobalColors.bgColorScreen,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  width: deviceSize.width * 1 / 10,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: const Icon(
                    Icons.local_taxi,
                  )),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                      margin: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(data.leaved_time,
                                      style: textTheme.bodyText1!
                                          .copyWith(fontFamily: 'WorkSans')),
                                  Text(data.arrived_time,
                                      style: textTheme.bodyText1!
                                          .copyWith(fontFamily: 'WorkSans')),
                                  Text(data.transaction_id,
                                      style: textTheme.bodyText1!
                                          .copyWith(fontFamily: 'OpenSans'))
                                ]),
                          ),
                          Container(
                            // width: deviceSize.width * 2 / 12,
                            // alignment: Alignment.topRight,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: const BoxDecoration(
                              border: Border(
                                left: BorderSide(width: 3, color: Colors.black),
                              ),
                            ),
                            child: Text(data.price,
                                style: Theme.of(context).textTheme.headline5),
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: GlobalColors.bgColorScreen,
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                  'assets/imgs/extra/from_to.png',
                                  height: 50),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // crossAxisAlignment:
                              //     CrossAxisAlignment.start,
                              children: [
                                where_bar(data.from_where),
                                where_bar(data.to_where),
                              ],
                            ),
                          ),
                          Container(
                              // margin: const EdgeInsets.only(
                              //     left: 5, right: 15),
                              color: GlobalColors.bgColorScreen,
                              width: deviceSize.width * 2 / 12,
                              height: deviceSize.width * 2 / 12,
                              alignment: Alignment.bottomRight,
                              // padding: const EdgeInsets.all(10),
                              child: Material(
                                  shape: const CircleBorder(
                                    side: BorderSide.none,
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: GlobalColors.white,
                                    radius: deviceSize.width / 6,
                                    backgroundImage: const AssetImage(
                                        'assets/imgs/user1.jpg'),
                                  )))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ])),
        if (stateColor != null && stampPath != '')
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Image.asset(
              stampPath,
              width: deviceSize.width * 3 / 12 - 10,
              color: stateColor,
            ),
            SizedBox(width: deviceSize.width / 12),
          ])
      ],
    );
  }

  Widget where_bar(String place) {
    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
        width: deviceSize.width,
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 8),
        margin: const EdgeInsets.fromLTRB(0, 2.5, 5, 2.5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: GlobalColors.white,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(place,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.end,
            style: textTheme.bodyText1!.copyWith(fontFamily: 'WorkSans')));
  }
}
