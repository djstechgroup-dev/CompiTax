import 'package:compitax/Slides/MainBoard/index.dart';
import 'package:flutter/material.dart';
import 'SignIn.dart';
import 'SignUp.dart';

class SignAccount extends StatelessWidget {
  const SignAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _handleToSignIn() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainBoard()),
      );
    }

    void _handleToSignUp() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignUp()),
      );
    }

    return Container(
        color: Colors.yellow,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Sign In with Accounts',
              style: TextStyle(fontSize: 40),
            ),
          ),
          body: ListView(
            children: [
              TextField(),
              TextField(),
              TextField(),
              ButtonBar(
                children: <Widget>[
                  TextButton(
                    onPressed: _handleToSignIn,
                    child: const Text('Sing In'),
                  ),
                  TextButton(
                    onPressed: _handleToSignUp,
                    child: const Text('Sing Up'),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
