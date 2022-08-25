import 'package:compitax/Layouts/MainBoard/CancelDialog.dart';
import 'package:compitax/Layouts/MainBoard/FareDialog.dart';
import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

class LeftSideDrawer extends StatelessWidget {
  const LeftSideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(color: GlobalColors.bgColorScreen),
              child: Material(
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
                child: CircleAvatar(
                  backgroundColor: GlobalColors.bgColorScreen,
                  radius: 50,
                  child: Image.asset('assets/imgs/user2.jpg'),
                ),
              )),
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //       color: Colors.green,
          //       image: DecorationImage(
          //         fit: BoxFit.fill,
          //         image: AssetImage('assets/imgs/user2.jpg'),
          //       )),
          //   child: Text(
          //     'Side menu',
          //     style: TextStyle(color: Colors.white, fontSize: 25),
          //   ),
          // ),
          ListTile(
            leading: const Icon(Icons.local_taxi),
            title: const Text('BOOK YOUR RIDE'),
            onTap: () => {Navigator.of(context).pushNamed('/main')},
          ),
          ListTile(
            leading: const Icon(Icons.book_outlined),
            title: const Text('MY BOOKS'),
            onTap: () => {Navigator.of(context).pushNamed('/my_bookings')},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('SETTINGS'),
            onTap: () => {Navigator.of(context).pushNamed('/settings')},
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('SHARE APP'),
            onTap: () => {Navigator.of(context).pushNamed('/share_app')},
          ),
          ListTile(
            leading: const Icon(Icons.star_rate),
            title: const Text('RATE APP'),
            onTap: () => {Navigator.of(context).pushNamed('/rating')},
          ),
          ListTile(
            leading: const Icon(Icons.phone_in_talk),
            title: const Text('CONTACT UP'),
            onTap: () => {Navigator.of(context).pushNamed('/contact_us')},
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('ABOUT US'),
            onTap: () => {Navigator.of(context).pushNamed('/about_us')},
          ),
          ListTile(
            leading: const Icon(Icons.support),
            title: const Text('SUPPORT'),
            onTap: () => {Navigator.of(context).pushNamed('/support')},
          ),
          ListTile(
            leading: const Icon(Icons.power_settings_new),
            title: const Text('LOGOUT'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            title: const Text('why cancel alert'),
            onTap: () async {
              String? result = await showDialog<String>(
                context: context,
                builder: (context) => const CancelDialog(),
              );
              // bottom snackbar
              if (result != null) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(result)));
              }
            },
          ),
          ListTile(
            title: const Text('total bill alert'),
            onTap: () async {
              String? result = await showDialog<String>(
                context: context,
                builder: (context) => const FareDialog(),
              );
              // bottom snackbar
              if (result != null) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(result)));
              }
            },
          ),
          ListTile(
              title: const Text('booking detail page'),
              onTap: () {
                Navigator.of(context).pushNamed('/booking_detail');
              }),
          ListTile(
              title: const Text('your bill page'),
              onTap: () {
                Navigator.of(context).pushNamed('/your_bill');
              }),
        ],
      ),
    );
  }
}
