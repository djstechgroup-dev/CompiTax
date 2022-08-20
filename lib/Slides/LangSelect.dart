import 'package:flutter/material.dart';

import 'Auth/SignIn.dart';
import 'Auth/SignUp.dart';

// class LangSelect extends StatelessWidget {
//   const LangSelect({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

// }

enum SingingCharacter { lafayette, jefferson }

class LangSelect extends StatefulWidget {
  const LangSelect({Key? key}) : super(key: key);

  @override
  _LangSelectState createState() => _LangSelectState();
}

class _LangSelectState extends State<LangSelect> {
  String lang = "eng";

  void changeLang(lang) {
    setState(() {
      this.lang = lang.toString();
    });
  }

  void navigator(Widget next) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => next));
  }

  @override
  Widget build(BuildContext context) {
    SingingCharacter? _character = SingingCharacter.lafayette;

    return Container(
        color: Colors.deepPurple,
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Lang Select',
                style: TextStyle(fontSize: 40),
              ),
            ),
            body: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio<SingingCharacter>(
                            value: SingingCharacter.lafayette,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                          Text("data"),
                        ],
                      )),
                      GestureDetector(
                        child: Radio<SingingCharacter>(
                          value: SingingCharacter.lafayette,
                          groupValue: _character,
                          onChanged: (SingingCharacter? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      )
                      // ListTile(
                      //   title: const Text('Lafayette'),
                      //   leading: Radio<SingingCharacter>(
                      //     value: SingingCharacter.lafayette,
                      //     groupValue: _character,
                      //     onChanged: (SingingCharacter? value) {
                      //       setState(() {
                      //         _character = value;
                      //       });
                      //     },
                      //   ),
                      // ),
                      // ListTile(
                      //   title: const Text('Thomas Jefferson'),
                      //   leading: Radio<SingingCharacter>(
                      //     value: SingingCharacter.jefferson,
                      //     groupValue: _character,
                      //     onChanged: (SingingCharacter? value) {
                      //       setState(() {
                      //         _character = value;
                      //       });
                      //     },
                      //   ),
                      // ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () => navigator(SignIn()),
                          child: const Text('Sign In')),
                      TextButton(
                          onPressed: () => navigator(SignUp()),
                          child: const Text('Sign Up')),
                    ],
                  )
                ],
              ),
            )));
  }
}
