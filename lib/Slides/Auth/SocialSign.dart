import 'package:compitax/Slides/MainBoard/index.dart';
import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';
import 'SignIn.dart';
import 'SignUp.dart';

class SocialSign extends StatelessWidget {
  const SocialSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic theme = Theme.of(context);

    ButtonStyle styleGenerator(Color color) {
      return ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return color.withOpacity(0.04);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return color.withOpacity(0.12);
            }
            return null; // Defer to the widget's default.
          },
        ),
      );
    }

    Widget BtnTruecaller = TextButton(
        style: styleGenerator(GlobalColors.secondary),
        onPressed: () {},
        child: const Text('Register via Truecaller'));

    Widget BtnFacebook = TextButton(
        style: styleGenerator(Colors.blue),
        onPressed: () {},
        child: const Text('Facebook'));

    Widget BtnGoogle = TextButton(
        style: styleGenerator(Colors.red),
        onPressed: () {},
        child: const Text('Google'));

    return Container(
      color: GlobalColors.initial,
      padding: EdgeInsets.all(20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Image.asset('assets/imgs/CompiTax_Logo.png',
                  width: (MediaQuery.of(context).size.width - 80 - 40) * 3 / 4),
            )
          ],
        ),
        Row(
          children: [
            Container(
                width: MediaQuery.of(context).size.width - 40,
                color: GlobalColors.bgColorScreen,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Log In to book a cab',
                      style: theme.textTheme.bodyLarge,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 40 - 20,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: BtnTruecaller,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width - 60,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width - 90) / 2,
                              child: BtnFacebook,
                            ),
                            Container(
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: (MediaQuery.of(context).size.width - 40 - 20) / 2,
              child: TextButton(
                  style: styleGenerator(GlobalColors.primary),
                  onPressed: () => Navigator.pushNamed(context, '/sign_up'),
                  child: const Text('Sign Up')),
            ),
            Container(
              width: (MediaQuery.of(context).size.width - 40 - 20) / 2,
              child: TextButton(
                  style: styleGenerator(GlobalColors.primary),
                  onPressed: () => Navigator.pushNamed(context, '/sign_in'),
                  child: const Text('Sign In')),
            ),
          ],
        ),
      ]),
    );
  }
}
