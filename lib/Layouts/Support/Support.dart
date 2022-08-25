import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return AppLayout(
        appbar: const TitleAppbar(title: 'SUPPORT'),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'CHOOSE CONTACT METHOD',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Icon(Icons.phone_in_talk_outlined,
                                  size: deviceSize.height / 16),
                            ),
                            Expanded(
                              child: Container(
                                height: deviceSize.height / 12,
                                alignment: Alignment.center,
                                color: GlobalColors.bgColorScreen,
                                child: Text(
                                  'SWIPE HERE TO PHONE CALL',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Icon(Icons.mark_as_unread,
                                  size: deviceSize.height / 16),
                            ),
                            Expanded(
                              child: Container(
                                height: deviceSize.height / 12,
                                alignment: Alignment.center,
                                color: GlobalColors.bgColorScreen,
                                child: Text(
                                  'SUBMIT TICKET',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Icon(Icons.question_answer_outlined,
                                  size: deviceSize.height / 16),
                            ),
                            Expanded(
                              child: Container(
                                height: deviceSize.height / 12,
                                alignment: Alignment.center,
                                color: GlobalColors.bgColorScreen,
                                child: Text(
                                  'LIVE CHAT (24X7)',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Icon(Icons.message_outlined,
                                  size: deviceSize.height / 16),
                            ),
                            Expanded(
                              child: Container(
                                height: deviceSize.height / 12,
                                alignment: Alignment.center,
                                color: GlobalColors.bgColorScreen,
                                child: Text(
                                  'FAQs',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
