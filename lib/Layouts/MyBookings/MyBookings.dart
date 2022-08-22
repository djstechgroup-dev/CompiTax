import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/layout/MainLayout.dart';
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
      'CRN 34567098765',
      'company1',
      '1111 111 111111 111 1111 111111 111 111111 111 1111 111111 111 111111 111 1111 111111 111 111111 111 1111 111111 111 111111 111 1111 111111 111 111111 111 1111 111111 111 111111 111 1111 11',
      '22 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 2222',
      '10.00',
      '12.00',
      '21\$',
      'cancelled'),
  BookingDataType(
      'CRN 345676543', 'company1', '2', '4', '1.00', '11.00', '33\$', 'active'),
  BookingDataType('CRN 345676543', 'company2', '3', '5', '8.00', '13.00',
      '13\$', 'completed'),
  BookingDataType('CRN 345676555', 'company6', '9', '1', '4.00', '9.00',
      '102\$', 'completed'),
  BookingDataType('CRN 345676624', 'company4', '8', '3', '6.00', '14.00',
      '44\$', 'cancelled'),
  BookingDataType(
      'CRN 345676543', 'company1', '6', '3', '5.00', '13.00', '67\$', 'active'),
  BookingDataType(
      'CRN 345676543', 'company2', '4', '1', '2.00', '15.00', '72\$', 'active'),
];

class MyBookings extends StatefulWidget {
  const MyBookings({Key? key}) : super(key: key);

  @override
  _MyBookingsState createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    Widget where_bar(String place) {
      return Container(
          width: deviceWidth,
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 8),
          margin: const EdgeInsets.fromLTRB(0, 2.5, 5, 2.5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: GlobalColors.white,
            borderRadius: BorderRadius.circular(3),
          ),
          child: Text(
            place,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.end,
          ));
    }

    return Mainlayout(
      title: 'MY BOOKINGS',
      body: ListView.separated(
        // padding: const EdgeInsets.all(5),
        itemCount: bookings_data.length,
        itemBuilder: (BuildContext context, int index) {
          BookingDataType data = bookings_data[index];
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
                  color: GlobalColors.bgColorScreen,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: deviceWidth * 1 / 10,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              data.leaved_time,
                                            ),
                                            Text(data.transaction_id)
                                          ]),
                                    ),
                                    Container(
                                      // width: deviceWidth * 2 / 12,
                                      // alignment: Alignment.topRight,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          left: BorderSide(
                                              width: 3, color: Colors.black),
                                        ),
                                      ),
                                      child: Text(data.price,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5),
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
                                            'assets/imgs/from_to.png',
                                            height: 50),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.start,
                                        children: [
                                          where_bar(data.from_where),
                                          where_bar(data.to_where),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        color: Colors.black26,
                                        width: deviceWidth * 2 / 12,
                                        alignment: Alignment.bottomRight,
                                        // padding: const EdgeInsets.all(10),
                                        child: Image.asset(
                                          'assets/imgs/user2.jpg',
                                          width: deviceWidth * 2 / 12,
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ])),
              if (stateColor != null && stampPath != '')
                Positioned(
                    top: 10,
                    right: 10,
                    child: Image.asset(
                      stampPath,
                      width: deviceWidth * 3 / 12 - 10,
                      color: stateColor,
                    ))
            ],
          );
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
