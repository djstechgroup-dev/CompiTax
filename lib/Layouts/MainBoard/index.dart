import 'package:compitax/Layouts/MainBoard/LeftSideDrawer.dart';
import 'package:flutter/material.dart';

class MainBoard extends StatelessWidget {
  const MainBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('BOOK YOUR RIDE'),
          ),
          drawer: const LeftSideDrawer(),
          body: Column(
            children: [
              Container(
                height: 100,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.red,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
              Expanded(child: Text('Google Map'))
            ],
          )),
    );
  }
}
