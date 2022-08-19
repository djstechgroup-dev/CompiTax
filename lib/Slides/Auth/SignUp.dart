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
            Text('Hello!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            TextField(),
            TextField(),
            TextField(),
            ButtonBar(
              children: [
                TextButton(
                    onPressed: _handleOKPressed, child: const Text('OK')),
                BackButton(
                  onPressed: _handleBackPressed,
                )
              ],
            ),
            TextButton(
                onPressed: _handleSignUpPressed, child: const Text('Sign Up'))
          ],
        ),
      ),
    );
  }
}
