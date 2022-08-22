import 'package:compitax/widgets/layout/MainLayout.dart';
import 'package:flutter/material.dart';

class BookingDataType {
  String company = '';
  String from_where = '';
  String to_where = '';
  String leaved_time = '';
  String arrived_time = '';
  String price = '';
  String current_state = '';

  BookingDataType(
      String company,
      String from_where,
      String to_where,
      String leaved_time,
      String arrived_time,
      String price,
      String current_state) {
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
      'company1',
      '1111 111 111111 111 1111 111111 111 111111 111 1111 111111 111 111111 111 1111 111111 111 111111 111 1111 111111 111 111111 111 1111 111111 111 111111 111 1111 111111 111 111111 111 1111 11',
      '22 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 222222 222 2 2 222 22 2 2 222 2222 222 2 2222 2 2 2222',
      '10.00',
      '12.00',
      '21\$',
      'canceled'),
  // BookingDataType('company1', '2', '4', '1.00', '11.00', '33\$', 'actived'),
  // BookingDataType('company1', '3', '1', '11.00', '12.00', '45\$', 'canceled'),
  // BookingDataType('company1', '5', '2', '13.00', '8.00', '80\$', 'performed'),
  // BookingDataType('company1', '1', '2', '10.00', '12.00', '21\$', 'canceled'),
  // BookingDataType('company1', '2', '4', '1.00', '11.00', '33\$', 'actived'),
  // BookingDataType('company1', '3', '1', '11.00', '12.00', '45\$', 'canceled'),
  // BookingDataType('company1', '5', '2', '13.00', '8.00', '80\$', 'performed'),
  // BookingDataType('company1', '1', '2', '10.00', '12.00', '21\$', 'canceled'),
  // BookingDataType('company1', '2', '4', '1.00', '11.00', '33\$', 'actived'),
  // BookingDataType('company1', '3', '1', '11.00', '12.00', '45\$', 'canceled'),
  // BookingDataType('company1', '5', '2', '13.00', '8.00', '80\$', 'performed'),
  // BookingDataType('company1', '1', '2', '10.00', '12.00', '21\$', 'canceled'),
  // BookingDataType('company1', '2', '4', '1.00', '11.00', '33\$', 'actived'),
  // BookingDataType('company1', '3', '1', '11.00', '12.00', '45\$', 'canceled'),
  // BookingDataType('company1', '5', '2', '13.00', '8.00', '80\$', 'performed'),
];

class MyBooking extends StatefulWidget {
  const MyBooking({Key? key}) : super(key: key);

  @override
  _MyBookingState createState() => _MyBookingState();
}

class _MyBookingState extends State<MyBooking> {
  @override
  Widget build(BuildContext context) {
    return Mainlayout(
      title: 'MY BOOKINGS',
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: bookings_data.length,
        itemBuilder: (BuildContext context, int index) {
          BookingDataType data = bookings_data[index];
          return Container(
            constraints: BoxConstraints(
                maxHeight: 100, maxWidth: 100, minHeight: 60, minWidth: 60),
            // height: MediaQuery.of(context).size.height / 10,
            child: ListTile(
              leading: Icon(Icons.local_taxi),
              title: Row(
                children: [
                  Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text(
                          data.leaved_time,
                        ),
                        const Text(
                          'xxxxx title',
                        )
                      ])),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height,
                    alignment: Alignment.topRight,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(width: 1.0, color: Colors.black),
                        bottom: BorderSide(width: 1.0, color: Colors.black),
                      ),
                    ),
                    child: Text(data.price,
                        style: Theme.of(context).textTheme.headline5),
                  )
                ],
              ),
              subtitle: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset('assets/imgs/from_to.png',
                          height: MediaQuery.of(context).size.height),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(data.from_where),
                        Text(data.to_where),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      child: Image.asset(
                        'assets/imgs/app_logos/logo.png',
                        width: MediaQuery.of(context).size.width / 5,
                      ))
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
