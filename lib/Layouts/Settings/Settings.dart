import 'package:another_flushbar/flushbar.dart';
import 'package:compitax/theme/colors.dart';
import 'package:compitax/utilities.dart';
import 'package:compitax/widgets/SettingCard.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:compitax/widgets/snackbar/FLoatingFlushbar.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String _sLang = 'English';
  bool _bNotification = true;

  void _handleChangeLang(String? lang) {
    setState(() {
      _sLang = lang!;
    });
  }

  void _handleChangeNotification(bool? flag) {
    setState(() {
      _bNotification = flag!;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return AppLayout(
      appbar: const TitleAppbar(title: 'SETTINGS'),
      body: ListView(
        children: [
          SettingCard(
            title: 'Choose Language',
            body: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
            ]),
          ),
          SettingCard(
            title: 'Change Password',
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: deviceSize.width * 3 / 5,
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          border: OutlineInputBorder(),
                          labelText: 'Old Password',
                          hintText: 'Enter your OLD password',
                          prefixIcon: Icon(Icons.lock_outline_sharp),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: deviceSize.width * 3 / 5,
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          border: OutlineInputBorder(),
                          labelText: 'New Password',
                          hintText: 'Enter your NEW password',
                          prefixIcon: Icon(Icons.fiber_new),
                        ),
                      ),
                    ),
                  ),

                  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  // vertical center doesn't apply !
                  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, right: 20),
                          child: Container(
                            width: deviceSize.width * 3 / 5,
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Confrim Password',
                                hintText: 'Confirm your password',
                                prefixIcon: Icon(Icons.check),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          // child: Container(
                          // padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextButton(
                              style: btnStyleGenerator(GlobalColors.primary),
                              onPressed: () {
                                Flushbar snackbar = showFloatingFlushbar(
                                    context: context,
                                    message: 'Passwor updated crrectly!');
                                snackbar.show(context).then((val) {
                                  print(val);
                                });
                              },
                              child: const Text(
                                'UPDATE',
                                style: TextStyle(color: GlobalColors.white),
                              )),
                          // ),
                        ),
                      ],
                    ),
                  )
                  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                ],
              ),
            ),
          ),
          SettingCard(
            title: 'Notification',
            body: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                      value: true,
                      groupValue: _bNotification,
                      onChanged: _handleChangeNotification,
                    ),
                    const Text("On"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                      value: false,
                      groupValue: _bNotification,
                      onChanged: _handleChangeNotification,
                    ),
                    const Text("Off"),
                  ],
                ),
              ),
            ]),
          ),
          SettingCard(
            title: 'Information',
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        const Icon(Icons.help_outline_rounded),
                        const Text('Send Feedback To Us.')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        const Icon(Icons.note_alt_outlined),
                        const Text('Terms, Privacy Policy and Licenses')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SettingCard(
            title: 'Close Account',
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Icon(Icons.logout),
                  Expanded(
                    child: Container(
                      // color: Colors.amber,
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Close Account'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text('Clear profile on this device'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
