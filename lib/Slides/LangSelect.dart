import 'package:flutter/material.dart';

import 'Auth/SignIn.dart';
import 'Auth/SignUp.dart';

// class LangSelect extends StatelessWidget {
//   const LangSelect({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

// }

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
    return Container(
        color: Colors.deepPurple,
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Lang Select',
                style: TextStyle(fontSize: 40),
              ),
            ),
            body: Row(
              children: <Widget>[
                // ListTile(
                //   title: GestureDetector(
                //       child: const Text('English'),
                //       onTap: () => changeLang('eng')),
                //   leading: Radio(
                //       value: 'eng', groupValue: lang, onChanged: changeLang),
                // ),
                // ListTile(
                //   title: GestureDetector(
                //       child: const Text('Russian'),
                //       onTap: () => changeLang('rus')),
                //   leading: Radio(
                //       value: 'rus', groupValue: lang, onChanged: changeLang),
                // )
                TextButton(
                    onPressed: () => navigator(SignIn()),
                    child: const Text('Sign In')),
                TextButton(
                    onPressed: () => navigator(SignUp()),
                    child: const Text('Sign Up')),
              ],
            )));
  }
}
