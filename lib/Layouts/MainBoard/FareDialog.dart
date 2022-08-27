import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

class FareDialog extends StatelessWidget {
  const FareDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return AlertDialog(
        title: Container(
            decoration: const BoxDecoration(
              color: GlobalColors.bgColorScreen,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                  child: Text(
                    'Total Bill : \$32.00',
                    // style: textTheme.headline4,
                    style: TextStyle(color: GlobalColors.black, fontSize: 34),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(
                  thickness: 2,
                  height: 4,
                  indent: 15,
                  endIndent: 15,
                  color: GlobalColors.border,
                )
              ],
            )),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        // insetPadding: EdgeInsets.symmetric(vertical: 50),
        titlePadding: const EdgeInsets.all(0),
        contentPadding: const EdgeInsets.all(0),
        content: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Container(
                            height: 3,
                            // margin: EdgeInsetsDirectional.only(start: 'indent', end: 'endIndent'),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 3,
                                        color: GlobalColors.border))))),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text('FARE BREAKDOWN')),
                    Expanded(
                        child: Container(
                            height: 3,
                            // margin: EdgeInsetsDirectional.only(start: 'indent', end: 'endIndent'),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 3,
                                        color: GlobalColors.border))))),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Base Fare'),
                          Text('2.50'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Distance'),
                          Text('8.26'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Time'),
                          Text('4.32'),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(thickness: 3, color: GlobalColors.border),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Normal Fare', style: textTheme.headline6),
                          Text('\$15.08', style: textTheme.headline6),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Surge x2.3'),
                          Text('19.6'),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(thickness: 1, color: GlobalColors.border),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.cyclone_outlined),
                        SizedBox(width: 10),
                        Text(
                          '2.3x surge was confirmed at 12:49p.m.',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )),
                const Divider(thickness: 1, color: GlobalColors.border),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal', style: textTheme.headline6),
                          Text('\$34.68', style: textTheme.headline6),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Safe Rides Fee (?)',
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          const Positioned(right: 0, child: Text('1.5')),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 1, color: GlobalColors.border),
                Row(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'CHARGED',
                        style: textTheme.overline,
                      ))
                ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 30,
                          color: Colors.grey,
                          child: Row(children: [Text('')]),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text('\$32.00', style: textTheme.headline6),
                    ]),
                const SizedBox(height: 5)
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      color: GlobalColors.primary,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/your_bill');
                          },
                          child: const Text(
                            'PAY NOW',
                            style: TextStyle(
                                color: GlobalColors.white, fontSize: 20),
                          ))))
            ],
          ),
        ]));
  }
}
