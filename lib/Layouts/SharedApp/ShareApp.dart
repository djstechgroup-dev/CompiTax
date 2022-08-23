import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/layout/LeftSideDrawer.dart';
import 'package:compitax/widgets/layout/MainLayout.dart';
import 'package:flutter/material.dart';

class ShareApp extends StatelessWidget {
  const ShareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> dummyData = [
      {'name': '111', 'color': 'red'},
      {'name': '222', 'color': 'blue'},
      {'name': '333', 'color': 'yellow'},
      {'name': '444', 'color': 'green'},
      {'name': '555', 'color': 'red'},
      {'name': '666', 'color': 'teal'},
      {'name': '111', 'color': 'red'},
      {'name': '222', 'color': 'blue'},
      {'name': '333', 'color': 'yellow'},
      {'name': '444', 'color': 'green'},
      {'name': '555', 'color': 'red'},
      {'name': '666', 'color': 'teal'},
      {'name': '111', 'color': 'red'},
      {'name': '222', 'color': 'blue'},
      {'name': '333', 'color': 'yellow'},
      {'name': '444', 'color': 'green'},
      {'name': '555', 'color': 'red'},
      {'name': '666', 'color': 'teal'},
    ];

    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: const LeftSideDrawer(),
      body: CustomScrollView(
        slivers: [
          // header part
          SliverAppBar(
            title: const Text(
              'Sliver App Bar Title',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.deepPurple,
            centerTitle: false,
            // 3
            expandedHeight: deviceSize.height / 3,
            // 4
            pinned: true,
            elevation: 0,
            // 5
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/imgs/bg1.jpg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  color: GlobalColors.header,
                  child: const RotatedBox(
                    quarterTurns: 1,
                    child: Text('Hello World!',
                        style:
                            TextStyle(color: GlobalColors.error, fontSize: 28),
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ]),
              stretchModes: const [StretchMode.blurBackground],
            ),
          ),

          // content part
          SliverPadding(
            padding: const EdgeInsets.all(15),
            sliver: SliverGrid.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 15,
              crossAxisCount: 3,
              childAspectRatio: 1,
              children: dummyData
                  .map((each) => Container(
                        margin: const EdgeInsets.all(10),
                        color: Colors.lightBlue,
                        child: Container(
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                    'assets/imgs/social_logos/google-logo.png'),
                              ),
                              Text(each["name"]!),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
              'Copyright 2022',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26),
            ),
          ),
          SliverFillRemaining(
              child: Container(
                  // color: GlobalColors.black,
                  )),
        ],
      ),
    );
  }
}
