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
          title: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text('SIGN IN', textAlign: TextAlign.center),
          ),
        ),
        body: ListView(padding: const EdgeInsets.all(20), children: [
          // Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: Image.asset(
                'assets/imgs/app_logos/logo2.png',
                width: MediaQuery.of(context).size.width * 3 / 4,
              )),
          InputContainer(
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
                        keyboardType: TextInputType.emailAddress,
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
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.lock_outline_sharp)),
                    ),
                  ),
                ),
              ]),
            ]),
          ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      child: TextButton(
                        style: btnStyleGenerator(GlobalColors.primary),
                        onPressed: () => Navigator.pushNamed(context, '/main'),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: GlobalColors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 5),
                      child: TextButton(
                        style: btnStyleGenerator(GlobalColors.primary),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/sign_up'),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: GlobalColors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ))
          //   ],
          // ),
        ]));
  }
}
