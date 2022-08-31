import 'package:compitax/Layouts/TripHistory/TripHistory.dart';
import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/TaxiServiceCard.dart';
import 'package:compitax/widgets/ZigzagDivider.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:flutter/material.dart';

BookingDataType last_trip_data = BookingDataType(
    'Mini, CRN 34567098765',
    'company1',
    'Dafferin Road, Maidan, Kolkata',
    'Kolkata',
    'Mon, Dec 12, 04:19 PM',
    '12.00',
    '\$21',
    'active');

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return AppLayout(
      appbar: const TitleAppbar(title: 'HOME PAGE'),
      body: ListView(children: [
        Container(
          color: GlobalColors.bgColorScreen,
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Text('Your Last Trip',
                  style: textTheme.headline4!
                      .copyWith(fontWeight: FontWeight.w800)),
              const Divider(
                  height: 15, thickness: 2, color: GlobalColors.border),
              TripCard(data: last_trip_data),
              const Divider(
                  height: 5, thickness: 2, color: GlobalColors.border),
              const Divider(
                  height: 5, thickness: 2, color: GlobalColors.border),
              Container(
                  height: 300,
                  color: GlobalColors.tertiary,
                  child: Row(children: [Text('Wallet Info')])),
              const Divider(
                  height: 5, thickness: 2, color: GlobalColors.border),
              const Divider(
                  height: 5, thickness: 2, color: GlobalColors.border),
              const SizedBox(height: 15),
              Text('Providers',
                  style: textTheme.headline4!
                      .copyWith(fontWeight: FontWeight.w800)),
              const SizedBox(height: 15),
              Container(
                // padding:
                //     const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const Divider(
                  height: 30, thickness: 2, color: GlobalColors.border),
              Column(
                children: [
                  Row(children: [
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text('Around the world.',
                            style: textTheme.headline6))
                  ]),
                  const TaxiServiceCard(
                      logo_path: 'assets/providers/uber/uber4.png',
                      name: 'Uber',
                      desc: 'Not installed or linked yet.',
                      showDownloadIcon: true),
                  const ZigzagDivider(),
                  const TaxiServiceCard(
                      logo_path: 'assets/providers/bolt/bolt3.png',
                      name: 'Bolt',
                      desc: 'Not installed or linked yet.',
                      showDownloadIcon: true),
                  const ZigzagDivider(),
                  const TaxiServiceCard(
                      logo_path: 'assets/providers/gett/gett1.png',
                      name: 'Gett',
                      desc: 'Directly bookable in CompiTax.',
                      showDownloadIcon: true),
                  const ZigzagDivider(),
                  const TaxiServiceCard(
                      logo_path: 'assets/providers/grab3.png',
                      name: 'Grab',
                      desc: 'Directly bookable in CompiTax.'),
                  const ZigzagDivider(),
                  const TaxiServiceCard(
                      logo_path: 'assets/providers/smrt1.png',
                      name: 'Smrt',
                      desc: 'Directly bookable in CompiTax.'),
                  const ZigzagDivider(),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
