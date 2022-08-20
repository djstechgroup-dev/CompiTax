import 'package:compitax/Slides/Auth/SignIn.dart';
import 'package:compitax/Slides/MainBoard/index.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _handleOKPressed() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignIn()),
      );
    }

    void _handleBackPressed() {
      Navigator.pop(context);
    }

    void _handleSignUpPressed() {
      ///////////////////////////////////////////
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainBoard()),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Container(
        color: Colors.teal,
        child: ListView(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: new Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'First Name',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: new Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Second Name',
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
