import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return AppLayout(
        appbar: const TitleAppbar(title: 'MY ACCOUNT'),
        body: Container(
            color: GlobalColors.bgColorScreen,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      child: Material(
                        shape: const CircleBorder(
                          side: BorderSide.none,
                        ),
                        child: CircleAvatar(
                          radius: deviceSize.width / 5,
                          backgroundImage: const AssetImage(
                            'assets/imgs/user1.jpg',
                          ),
                        ),
                      ))
                ],
              ),
              Container(
                // margin: const EdgeInsets.all(10),
                // color: GlobalColors.white,
                child: Column(
                  children: [
                    AccountRow(
                        context, 'Name', null, Icons.label_important_outline),
                    AccountRow(
                        context, 'Phone', 'Set phone number', Icons.phone),
                    AccountRow(
                        context, 'Email', 'kevinm@gmail.com', Icons.email),
                    AccountRow(context, 'Payment Method', 'Add', Icons.payment),
                  ],
                ),
              ),
            ])));
  }

  Widget AccountRow(BuildContext context, String title,
      [String? value, IconData? icon]) {
    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: GlobalColors.white,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              if (icon != null) Icon(icon, size: 33),
              Text(title, style: textTheme.bodyText1!.copyWith(fontSize: 22)),
            ]),
            Row(children: [
              Text(value ?? 'Set $Title',
                  style: textTheme.caption!.copyWith(fontSize: 18)),
              const Icon(Icons.arrow_right, size: 27),
            ]),
          ],
        ));
  }
}
