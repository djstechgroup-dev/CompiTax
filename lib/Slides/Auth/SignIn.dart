import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameCtrller = TextEditingController();
    TextEditingController emailCtrller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Container(
        color: Colors.red,
        child: ListView(
          children: [
            TextField(
              controller: nameCtrller,
              decoration: const InputDecoration(
                label: Text(
                  'Password',
                  style: TextStyle(fontSize: 20),
                ),
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            TextField(controller: emailCtrller)
          ],
        ),
      ),
    );
  }
}
