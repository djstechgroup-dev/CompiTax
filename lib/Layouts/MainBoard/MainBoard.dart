import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:flutter/material.dart';

class MainBoard extends StatelessWidget {
  const MainBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      child: AppLayout(
          appbar: const TitleAppbar(title: 'BOOK YOUR RIDE'),
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
