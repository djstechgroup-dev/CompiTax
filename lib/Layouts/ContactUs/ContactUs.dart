import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/layout/LeftSidebarLayout.dart';
import 'package:flutter/material.dart';

class Contactus extends StatefulWidget {
  const Contactus({Key? key}) : super(key: key);

  @override
  _ContactusState createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return LeftSidebarLayout(
        title: 'CONTACT US',
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(30),
                          decoration: const BoxDecoration(
                            color: GlobalColors.bgColorScreen,
                            boxShadow: [
                              BoxShadow(
                                color: GlobalColors.bgColorScreen,
                                offset: Offset(
                                  0,
                                  5.0,
                                ),
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Taxi Hub Ltd.',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              Text(
                                '1 kanuwa, Ganemulla Road, Kadawasa, Colombo 11850.',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          )),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: Column(children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Name',
                                  hintText: "Enter your Name",
                                  prefixIcon: Icon(Icons.account_box_outlined),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Email',
                                  hintText: "Enter your Email",
                                  prefixIcon: Icon(Icons.email_sharp),
                                  // errorText:
                                  //     'Please enter your email address correctly.'
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Subject',
                                  prefixIcon: Icon(Icons.subject),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Phone',
                                  hintText: 'Your Phone Number',
                                  prefixIcon: Icon(Icons.phone),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextField(
                                minLines: 5,
                                maxLines: 10,
                                maxLength: 500,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: TextField(
                                      enabled: false,
                                      controller:
                                          TextEditingController(text: '8 + 3'),
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        prefixIcon: Icon(Icons.lock_outline),
                                      ),
                                    ),
                                  ),
                                  const Text('    =    '),
                                  const Expanded(
                                    flex: 2,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]))
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        color: GlobalColors.primary,
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text('SUBMIT',
                                style: TextStyle(
                                  color: GlobalColors.white,
                                )))),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
