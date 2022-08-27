import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/layout/LeftSideDrawer.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:compitax/widgets/layout/TitleAppbar.dart';
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
      {'name': '222', 'color': 'blue'},
      {'name': '333', 'color': 'yellow'},
      {'name': '444', 'color': 'green'},
      {'name': '555', 'color': 'red'},
      {'name': '666', 'color': 'teal'},
      {'name': '111', 'color': 'red'},
      {'name': '222', 'color': 'blue'},
      {'name': '222', 'color': 'blue'},
      {'name': '333', 'color': 'yellow'},
      {'name': '444', 'color': 'green'},
      {'name': '555', 'color': 'red'},
      {'name': '666', 'color': 'teal'},
      {'name': '111', 'color': 'red'},
      {'name': '222', 'color': 'blue'},
    ];

    Size deviceSize = MediaQuery.of(context).size;

    return AppLayout(
      appbar: const TitleAppbar(title: 'SHARE APP'),
      body: CustomScrollView(
        slivers: [
          // _buildAppBar(context),

          // content part
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            sliver: SliverGrid.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 15,
              crossAxisCount: 3,
              childAspectRatio: 1,
              children: dummyData
                  .map((each) => Container(
                        margin: const EdgeInsets.all(10),
                        // color: Colors.lightBlue,
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
          SliverToBoxAdapter(
            child: Column(
              children: const [
                Text(
                  'Copyright 2022',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26),
                ),
                SizedBox(height: 20)
              ],
            ),
          ),

          //  // this part is for scroll-flexible at bottom
          // SliverFillRemaining(
          //     child: Container(
          //         // color: GlobalColors.success,
          //         // height: 10,
          //         )),
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return // header part
        SliverAppBar(
      title: const Text(
        'SHARE APP',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      // backgroundColor: Colors.deepPurple,
      centerTitle: false,
      expandedHeight: deviceSize.height / 3,

      // automaticallyImplyLeading: false,
      // forceElevated: true,
      // primary: false,
      pinned: true,
      // floating: true,
      // snap: true,
      // stretch: true,

      shadowColor: GlobalColors.success,
      elevation: 5,
      //
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            // Container(
            //   // decoration: const BoxDecoration(
            //   //   image: DecorationImage(
            //   //     image: AssetImage("assets/imgs/bg/img2.jpg"),
            //   //     fit: BoxFit.contain,
            //   //   ),
            //   // ),
            //   child: const Text(
            //     "These apps are the shared apps what you installed on this device.",
            //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            //   ),
            // ),
            Image.asset("assets/imgs/bg/img2.jpg",
                height: deviceSize.height / 3)
          ],
        ),
        stretchModes: const [StretchMode.blurBackground],
      ),
    );
  }
}
