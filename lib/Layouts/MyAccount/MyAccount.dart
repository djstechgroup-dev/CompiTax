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
            child: Column(children: [
          Row(
            children: [
              Container(
                alignment: Alignment.center,
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
          Text('aazasa'),
        ])));
  }
}
