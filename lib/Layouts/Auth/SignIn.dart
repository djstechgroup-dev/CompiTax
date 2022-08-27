import 'dart:ffi';

import 'package:compitax/theme/colors.dart';
import 'package:compitax/utilities.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:flutter/material.dart';
import 'package:compitax/widgets/InputContainer.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final bool _validEmail = true;
  final bool _validPwd = true;
  final bool _validConfirm = true;

  final String _validAlert = 'xxxxxxxxxx';

  @override
  Widget build(BuildContext context) {
    TextEditingController nameCtrller = TextEditingController();
    TextEditingController emailCtrller = TextEditingController();
    return Scaffold(
      // AppLayout(
      //     appbar: const TitleAppbar(title: 'SIGN IN'),
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            color: GlobalColors.initial,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ////////////////////////////////////////////////////////////////
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
                            obscureText: true,
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          child: TextButton(
                            style: btnStyleGenerator(GlobalColors.primary),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/main'),
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
