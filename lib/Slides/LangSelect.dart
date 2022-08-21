import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:compitax/theme/colors.dart';
import 'Auth/SignIn.dart';
import 'Auth/SignUp.dart';

class LangSelect extends StatefulWidget {
  const LangSelect({Key? key}) : super(key: key);

  @override
  _LangSelectState createState() => _LangSelectState();
}

class _LangSelectState extends State<LangSelect> {
  String _lang = 'English';

  void changeLang(dynamic lang) {
    setState(() {
      this._lang = lang.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: GlobalColors.initial,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                  child: Image.asset('assets/imgs/CompiTax_Logo.png',
                      width: (MediaQuery.of(context).size.width - 40) * 3 / 4),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                  color: GlobalColors.bgColorScreen,
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
                  child: Text(
                      'Please select a language which you\'re going to use in this application.',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                          value: 'English',
                          groupValue: _lang,
                          onChanged: changeLang,
                        ),
                        const Text("English"),
                      ],
                    )),
                    GestureDetector(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(
                          value: 'Russian',
                          groupValue: _lang,
                          onChanged: changeLang,
                        ),
                        const Text("Russian"),
                      ],
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You selected $_lang.",
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              GlobalColors.primary),
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return GlobalColors.secondary.withOpacity(0.04);
                              }
                              if (states.contains(MaterialState.focused) ||
                                  states.contains(MaterialState.pressed)) {
                                return GlobalColors.secondary.withOpacity(0.12);
                              }
                              return null; // Defer to the widget's default.
                            },
                          ),
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/social_sign'),
                        child: const Text(
                          'NEXT',
                          style: TextStyle(color: Colors.white),
                        )))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
