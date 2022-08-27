import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/MapSearchBar.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:flutter/material.dart';

var locationData = [
  {'name': '111111', 'description': '11111111'},
  {'name': '2222', 'description': '2222'},
];

class MainBoard extends StatelessWidget {
  const MainBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return AppLayout(
        appbar: const TitleAppbar(title: 'BOOK YOUR RIDE'),
        body: Column(children: [
          Stack(children: [
            // Expanded(
            //   child:
            Container(
              width: deviceSize.width,
              height: deviceSize.height,
              color: GlobalColors.info,
              //  child: Text('Google Map')
            ),
            // ),
            Container(
              height: deviceSize.height / 8,
              // constraints: BoxConstraints(
              //     maxHeight: deviceSize.height / 6,
              //     minHeight: deviceSize.height / 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: deviceSize.width / 2,
                      padding: const EdgeInsets.all(10),
                      // color: Colors.red,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 2, color: GlobalColors.border))),
                      child: Row(
                        children: [
                          Image.asset('assets/imgs/extra/_from.png',
                              width: deviceSize.width / 24),
                          const SizedBox(width: 10),
                          Expanded(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                Text(
                                  'Choose Pickup Location',
                                  style: TextStyle(fontSize: 18),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                ),
                                Text('xxx station',
                                    style: TextStyle(
                                        fontSize: 16, fontFamily: '')),
                              ]))
                        ],
                      ),
                    ),
                  ),
                  const RotatedBox(
                      quarterTurns: 1,
                      child: Divider(
                          height: 8,
                          thickness: 2,
                          indent: 3,
                          endIndent: 3,
                          color: GlobalColors.border)),
                  Expanded(
                    child: Container(
                      width: deviceSize.width / 2,
                      padding: const EdgeInsets.all(10),
                      // color: Colors.blue,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 2, color: GlobalColors.border))),
                      child: Row(
                        children: [
                          Image.asset('assets/imgs/extra/_to.png',
                              width: deviceSize.width / 24),
                          const SizedBox(width: 10),
                          Expanded(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                Text(
                                  'Drop Location',
                                  style: TextStyle(fontSize: 18),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                ),
                                Text('xxx station',
                                    style: TextStyle(fontSize: 16)),
                              ]))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      padding: EdgeInsets.all(10),
                      child: Row(children: [
                        Expanded(
                            child: Column(children: [
                          Text(locationData[index]['name']!),
                          Text(locationData[index]['description']!),
                        ])),
                        Padding(
                            padding: const EdgeInsets.all(15),
                            child: Icon(Icons.add_circle_outline))
                      ]));
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      color: Colors.black,
                      height: 5,
                      indent: 5,
                      endIndent: 5,
                      thickness: 2,
                    ),
                itemCount: locationData.length),
            const Positioned(bottom: 10, right: 10, child: MapSearchBar())
          ])
        ]));
  }
}
