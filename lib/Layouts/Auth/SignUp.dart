import 'package:compitax/theme/colors.dart';
import 'package:compitax/utilities.dart';
import 'package:compitax/widgets/InputContainer.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppLayout(
      //     appbar: const TitleAppbar(title: 'SIGN UP WITH COMPANY'),
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
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/imgs/app_logos/logo2.png',
                      width: MediaQuery.of(context).size.width * 3 / 4,
                    )),
                InputContainer(
                  child: Column(children: [
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 5, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'First Name',
                                  hintText: 'Enter your first name.',
                                  // contentPadding: EdgeInsets.all(100),
                                  prefixIcon: Icon(Icons.account_box_sharp)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 10, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Last Name',
                                hintText: 'Enter your last name.',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
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
                    Row(
                      children: const [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
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
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: TextField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Confirm',
                                  hintText: 'Confirm Password',
                                  prefixIcon: Icon(Icons.lock_outline_sharp)),
                            ),
                          ),
                        )
                      ],
                    ),
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
                              'Sign Up',
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
                                Navigator.pushNamed(context, '/sign_in'),
                            child: const Text(
                              'Sign In',
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
