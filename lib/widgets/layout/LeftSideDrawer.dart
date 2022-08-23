import 'package:flutter/material.dart';

class LeftSideDrawer extends StatelessWidget {
  const LeftSideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/imgs/bg1.jpg'),
                )),
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
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
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.phone_in_talk),
            title: const Text('CONTACT UP'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('ABOUT'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.support),
            title: const Text('SUPPORT'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.power_settings_new),
            title: const Text('LOGOUT'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
