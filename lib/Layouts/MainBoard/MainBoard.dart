import 'package:compitax/Layouts/MainBoard/MapLocationList.dart';
import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/MapSearchBar.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
import 'package:flutter/material.dart';

class MainBoard extends StatefulWidget {
  const MainBoard({Key? key}) : super(key: key);

  @override
  _MainBoardState createState() => _MainBoardState();
}

class _MainBoardState extends State<MainBoard> {
  late bool bLocationList;
  late bool bTaxiList;

  @override
  void initState() {
    super.initState();
    bLocationList = false;
    bTaxiList = false;
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return AppLayout(
      appbar: const TitleAppbar(title: 'BOOK YOUR RIDE'),
      body: Column(
        children: [
          Container(
            height: deviceSize.height / 8,
            // constraints: BoxConstraints(
            //     maxHeight: deviceSize.height / 6,
            //     minHeight: deviceSize.height / 8),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        bLocationList = !bLocationList;
                      });
                    },
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
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          bLocationList = !bLocationList;
                        });
                      },
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
                      )),
                )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            bTaxiList = !bTaxiList;
                          });
                        },
                        child: Container(
                          // width: deviceSize.width,
                          // height: deviceSize.height,
                          color: GlobalColors.info,
                          //  child: Text('Google Map')
                        ),
                      ),
                    )
                  ],
                ),
                // bListView ? MapLocationList(context)! : Container(),
                bLocationList ? MapLocationList() : Container(),
                const Positioned(bottom: 10, right: 10, child: MapSearchBar())
              ],
            ),
          ),

/////////////////////////////////////////////////////////////////////////////////////
// I have to start here!!!
/////////////////////////////////////////////////////////////////////////////////////
          if (bTaxiList)
            Column(children: [
              Container(
                height: 250,
                width: deviceSize.width,
                color: Colors.white,
              ),
            ])
        ],
      ),
    );
  }

  // Widget? MapLocationList(BuildContext context) {
  //   Size deviceSize = MediaQuery.of(context).size;
  //   TextTheme textTheme = Theme.of(context).textTheme;

  //   var original = ListView.separated(
  //       itemBuilder: (BuildContext context, int index) {
  //         return Container(
  //             color: GlobalColors.bgColorScreen,
  //             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  //             child: Row(children: [
  //               Expanded(
  //                   child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                     Text(locationData[index]['name']!,
  //                         style: textTheme.headline6),
  //                     const SizedBox(height: 10),
  //                     Text(locationData[index]['description']!,
  //                         style: textTheme.caption),
  //                   ])),
  //               const Icon(Icons.add_circle_outline)
  //             ]));
  //       },
  //       separatorBuilder: (BuildContext context, int index) => const Divider(
  //             color: Colors.black,
  //             height: 2,
  //             indent: 5,
  //             endIndent: 5,
  //             thickness: 2,
  //           ),
  //       itemCount: locationData.length);

  // var animated = AnimatedList(
  //     initialItemCount: locationData.length,
  //     itemBuilder: (BuildContext context, int index, animation) {
  //       return AnimatedContainer(
  //           duration: Duration(seconds: 1),
  //           curve: Curves.ease,
  //           color: GlobalColors.bgColorScreen,
  //           padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  //           child: Row(children: [
  //             Expanded(
  //                 child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                   Text(locationData[index]['name']!,
  //                       style: textTheme.headline6),
  //                   const SizedBox(height: 10),
  //                   Text(locationData[index]['description']!,
  //                       style: textTheme.caption),
  //                 ])),
  //             // Padding(
  //             // padding: const EdgeInsets.all(15),
  //             // child:
  //             Icon(Icons.add_circle_outline)
  //             // )
  //           ]));
  //     });

  // return original;
  // // return animated;
  // }
}
