import 'package:flutter/material.dart';

import 'package:compitax/utilities.dart';
import 'package:compitax/theme/colors.dart';

class LangSelect extends StatefulWidget {
  const LangSelect({Key? key}) : super(key: key);

  @override
  _LangSelectState createState() => _LangSelectState();
}

class _LangSelectState extends State<LangSelect> {
  String _sLang = 'English';

  void _handleChangeLang(dynamic lang) {
    setState(() {
      _sLang = lang.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: GlobalColors.initial,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                  child: Image.asset('assets/imgs/app_logos/logo2.png',
                      width: (MediaQuery.of(context).size.width - 40) * 3 / 4),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              decoration: BoxDecoration(
                  color: GlobalColors.bgColorScreen,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Text(
                      'Please select a language which you\'re going to use in this application.',
                      style: Theme.of(context).textTheme.subtitle1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            value: 'English',
                            groupValue: _sLang,
                            onChanged: _handleChangeLang,
                          ),
                          const Text("English"),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            value: 'Russian',
                            groupValue: _sLang,
                            onChanged: _handleChangeLang,
                          ),
                          const Text("Russian"),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You selected $_sLang.",
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ],
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextButton(
                        style: btnStyleGenerator(GlobalColors.primary),
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
