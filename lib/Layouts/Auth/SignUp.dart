import 'package:compitax/theme/colors.dart';
import 'package:compitax/utilities.dart';
import 'package:compitax/widgets/InputContainer.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('SIGN UP WITH COMPANY')),
        body: ListView(padding: const EdgeInsets.all(15), children: [
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/imgs/app_logos/logo2.png',
                width: MediaQuery.of(context).size.width * 3 / 4,
              )),
          Inputcontainer(
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
                        keyboardType: TextInputType.number,
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
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: TextButton(
              style: styleGenerator(GlobalColors.primary),
              onPressed: () {
                Navigator.pushNamed(context, '/main');
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: GlobalColors.white),
                ),
              ),
            ),
          )
          //   ],
          // ),
        ]));
  }
}
