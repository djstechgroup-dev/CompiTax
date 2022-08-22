import 'package:compitax/Layouts/MainBoard/MainBoard.dart';
import 'package:compitax/theme/colors.dart';
import 'package:compitax/utilities.dart';
import 'package:flutter/material.dart';
import 'SignIn.dart';
import 'SignUp.dart';

class SocialSign extends StatelessWidget {
  const SocialSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic theme = Theme.of(context);

    Widget BtnTruecaller = TextButton(
        style: styleGenerator(GlobalColors.secondary),
        onPressed: () {},
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/imgs/social_logos/truecaller-logo.png',
                width: 25,
              )),
          const Text(
            'Register via Truecaller',
            style: TextStyle(color: GlobalColors.white),
          )
        ]));

    Widget BtnFacebook = TextButton(
        style: styleGenerator(Colors.blue),
        onPressed: () {},
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/imgs/social_logos/facebook-logo.png',
                width: 25,
              )),
          const Text(
            'Facebook',
            style: TextStyle(color: GlobalColors.white),
          )
        ]));

    Widget BtnGoogle = TextButton(
        style: styleGenerator(Colors.red),
        onPressed: () {},
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              'assets/imgs/social_logos/google-logo.png',
              width: 25,
            ),
          ),
          const Text(
            'Google',
            style: TextStyle(color: GlobalColors.white),
          )
        ]));

    return Container(
      color: GlobalColors.initial,
      padding: const EdgeInsets.all(20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Image.asset('assets/imgs/app_logos/logo2.png',
                  width: (MediaQuery.of(context).size.width - 80 - 40) * 3 / 4),
            )
          ],
        ),
        Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width - 40,
                color: GlobalColors.bgColorScreen,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Log In to book a cab',
                      style: theme.textTheme.bodyLarge,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 40 - 20,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: BtnTruecaller,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width - 60,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              child: BtnFacebook,
                            ),
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              child: BtnGoogle,
                            ),
                          ],
                        ))
                  ],
                ))
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: (MediaQuery.of(context).size.width - 40) / 2,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TextButton(
                  style: styleGenerator(GlobalColors.white),
                  onPressed: () => Navigator.pushNamed(context, '/sign_up'),
                  child: const Text('Sign Up')),
            ),
            Container(
              width: (MediaQuery.of(context).size.width - 40) / 2,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TextButton(
                  style: styleGenerator(GlobalColors.white),
                  onPressed: () => Navigator.pushNamed(context, '/sign_in'),
                  child: const Text('Sign In')),
            ),
          ],
        ),
      ]),
    );
  }
}
