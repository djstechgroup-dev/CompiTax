// ignore_for_file: prefer_const_constructors

import 'package:another_flushbar/flushbar.dart';
import 'package:compitax/Layouts/MainBoard/CancelDialog.dart';
import 'package:compitax/Layouts/MainBoard/FareDialog.dart';
import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/ZigzagDivider.dart';
import 'package:compitax/widgets/snackbar/FloatingFlushbar.dart';
import 'package:compitax/widgets/snackbar/NormalSnackbar.dart';
import 'package:flutter/material.dart';

class LeftSideDrawer extends StatelessWidget {
  const LeftSideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return SafeArea(
        child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   decoration: const BoxDecoration(color: GlobalColors.bgColorScreen),
          //   child:
          Container(
              // color: GlobalColors.info,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      shape: const CircleBorder(
                        side: BorderSide.none,
                      ),
                      child: CircleAvatar(
                        radius: deviceSize.width / 8,
                        backgroundImage: AssetImage(
                          'assets/imgs/user1.jpg',
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text('Hi, friend!', style: textTheme.headline3),
                    const SizedBox(height: 10),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/my_account');
                        },
                        child: Text('View profile',
                            style: textTheme.headline6!.copyWith(
                                decoration: TextDecoration.underline)))
                  ])),
          // ),
          const ZigzagDivider(),

          CustomListItem(
              title: 'Home',
              leadingIcon: Icons.home_outlined,
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              }),
          CustomListItem(
              title: 'MY ACCOUNT',
              leadingIcon: Icons.account_box_outlined,
              onTap: () {
                Navigator.of(context).pushNamed('/my_account');
              }),
          CustomListItem(
              title: 'PROVIDERS',
              leadingIcon: Icons.compare_rounded,
              onTap: () {
                Navigator.of(context).pushNamed('/providers');
              }),

          CustomListItem(
            title: 'BOOK YOUR RIDE',
            leadingIcon: Icons.local_taxi,
            onTap: () {
              Navigator.of(context).pushNamed('/main');
            },
          ),
          CustomListItem(
            leadingIcon: Icons.book_outlined,
            title: 'TRIP HISTORY',
            // title: 'MY BOOKS'),
            onTap: () => {Navigator.of(context).pushNamed('/trip_history')},
          ),
          CustomListItem(
            leadingIcon: Icons.settings,
            title: 'SETTINGS',
            onTap: () => {Navigator.of(context).pushNamed('/settings')},
          ),
          CustomListItem(
            leadingIcon: Icons.share,
            title: 'SHARE APP',
            onTap: () => {Navigator.of(context).pushNamed('/share_app')},
          ),
          CustomListItem(
            leadingIcon: Icons.star_rate,
            title: 'RATE APP',
            onTap: () => {Navigator.of(context).pushNamed('/rating')},
          ),
          CustomListItem(
            leadingIcon: Icons.phone_in_talk,
            title: 'CONTACT UP',
            onTap: () => {Navigator.of(context).pushNamed('/contact_us')},
          ),
          CustomListItem(
            leadingIcon: Icons.info,
            title: 'ABOUT US',
            onTap: () => {Navigator.of(context).pushNamed('/about_us')},
          ),
          CustomListItem(
            leadingIcon: Icons.support,
            title: 'SUPPORT',
            onTap: () => {Navigator.of(context).pushNamed('/support')},
          ),
          CustomListItem(
            leadingIcon: Icons.power_settings_new,
            title: 'LOGOUT',
            onTap: () => {Navigator.of(context).pop()},
          ),
          CustomListItem(
            title: 'why cancel alert',
            onTap: () async {
              String? result = await showDialog<String>(
                context: context,
                builder: (context) => const CancelDialog(),
              );
              // bottom snackbar
              if (result != null) {
                Flushbar snackbar =
                    showFloatingFlushbar(context: context, message: result);
                snackbar.show(context).then((val) {
                  print(val);
                });

                // // normal snackbar
                // SnackBar snackbar =
                //     showSnackBar(context: context, message: result);
                // ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }
            },
          ),
          CustomListItem(
            title: 'total bill alert',
            onTap: () async {
              String? result = await showDialog<String>(
                context: context,
                builder: (context) => const FareDialog(),
              );
              // bottom snackbar
              if (result != null) {
                Flushbar snackbar =
                    showFloatingFlushbar(context: context, message: result);
                snackbar.show(context).then((val) {
                  print(val);
                });
              }
            },
          ),
          CustomListItem(
              title: 'booking detail page',
              onTap: () {
                Navigator.of(context).pushNamed('/booking_detail');
              }),
          CustomListItem(
              title: 'your bill page',
              onTap: () {
                Navigator.of(context).pushNamed('/your_bill');
              }),
          CustomListItem(
              title: 'booking confirmed page',
              onTap: () {
                Navigator.of(context).pushNamed('/booking_confirmed');
              }),
        ],
      ),
    ));
  }
}

class CustomListItem extends StatelessWidget {
  late IconData? leadingIcon;
  late String title;
  late dynamic onTap;
  CustomListItem({Key? key, this.onTap, this.leadingIcon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return GestureDetector(
        onTap: onTap ?? () {},
        child: Container(
            color: GlobalColors.bgColorScreen,
            // color: GlobalColors.bgColorScreen,
            padding: const EdgeInsets.all(10),
            child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: GlobalColors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  if (leadingIcon != null)
                    Icon(
                      leadingIcon,
                      size: deviceSize.width / 8,
                    ),
                  const SizedBox(width: 20),
                  Text(title, style: textTheme.headline6),
                ]))));
  }
}
