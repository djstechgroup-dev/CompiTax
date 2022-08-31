import 'package:compitax/widgets/ZigzagDivider.dart';
import 'package:compitax/widgets/TaxiServiceCard.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

class Providers extends StatefulWidget {
  const Providers({Key? key}) : super(key: key);

  @override
  _ProvidersState createState() => _ProvidersState();
}

class _ProvidersState extends State<Providers> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return AppLayout(
        appbar: const TitleAppbar(title: 'PROVIDERS'),
        body: Container(
            color: GlobalColors.bgColorScreen,
            padding: const EdgeInsets.all(15),
            child: Column(children: [
              Text('Providers',
                  style: textTheme.headline4!
                      .copyWith(fontWeight: FontWeight.w800)),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              // const SizedBox(height: 30),
              const Divider(
                  height: 30, thickness: 2, color: GlobalColors.border),
              Expanded(
                child: Container(
                  child: ListView(
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
                ),
              ),
            ])));
  }
}
