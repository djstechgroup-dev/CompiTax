import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
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
                      listItem(context, 'assets/providers/uber/uber4.png',
                          'Uber', 'Not installed or linked yet.', true),
                      ZigzagDivider(),
                      listItem(context, 'assets/providers/bolt/bolt3.png',
                          'Bolt', 'Not installed or linked yet.', true),
                      ZigzagDivider(),
                      listItem(context, 'assets/providers/gett/gett1.png',
                          'Gett', 'Directly bookable in CompiTax.', true),
                      ZigzagDivider(),
                      listItem(context, 'assets/providers/grab3.png', 'Grab',
                          'Directly bookable in CompiTax.'),
                      ZigzagDivider(),
                      listItem(context, 'assets/providers/smrt1.png', 'Smrt',
                          'Directly bookable in CompiTax.'),
                      ZigzagDivider(),
                    ],
                  ),
                ),
              ),
            ])));
  }

  Widget listItem(
      BuildContext context, String logo_path, String? name, String? desc,
      [bool? showDownloadIcon]) {
    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: GlobalColors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(
            logo_path,
            width: deviceSize.width * 2 / 12,
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name ?? '', style: textTheme.headline4),
                    Text(desc ?? '', style: textTheme.bodyText1),
                  ],
                )),
          ),
          if (showDownloadIcon == true)
            Icon(Icons.cloud_download_outlined, size: deviceSize.width / 12)
        ],
      ),
    );
  }

  Widget ZigzagDivider() {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Image.asset('assets/imgs/extra/_border_l.png'));
  }
}
