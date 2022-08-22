import 'dart:ffi';

import 'package:compitax/theme/colors.dart';
import 'package:compitax/utilities.dart';
import 'package:flutter/material.dart';
import 'package:compitax/widgets/InputContainer.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _validEmail = true;
  bool _validPwd = true;
  bool _validConfirm = true;

  String _validAlert = 'xxxxxxxxxx';

  @override
  Widget build(BuildContext context) {
    TextEditingController nameCtrller = TextEditingController();
    TextEditingController emailCtrller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text('SIGN IN'),
        ),
        body: ListView(padding: EdgeInsets.all(20), children: [
          // Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: Image.asset(
                'assets/imgs/app_logos/logo2.png',
                width: MediaQuery.of(context).size.width * 3 / 4,
              )),
          Inputcontainer(
            child: Column(children: [
              Text(
                'To book a Taxi, Login to company Account',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            hintText: "Enter Email",
                            prefixIcon: Icon(Icons.email_sharp)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(children: const [
                // Column(
                //   children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.lock_outline_sharp)),
                    ),
                  ),
                ),
                // Container(
                //   alignment: Alignment.centerRight,
                //   child: Text(
                //     _validAlert,
                //     style: TextStyle(color: GlobalColors.error),
                //   ),
                // )
                //   ],
                // ),
              ]),
            ]),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: TextButton(
              style: styleGenerator(GlobalColors.primary),
              onPressed: () {
                Navigator.pushNamed(context, '/main');
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: GlobalColors.white),
                ),
              ),
            ),
          )
          //   ],
          // ),
        ]));
  }
}
