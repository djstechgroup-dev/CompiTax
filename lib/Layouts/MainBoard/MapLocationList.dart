import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

var locationData = [
  {'name': 'Colombo', 'description': 'Sri Lanka'},
  {
    'name': 'Colombo Bus Station',
    'description': 'Dehiwala-Mount, Lavinia, Sri Lanka'
  },
  {
    'name': 'Colombo Railway Station',
    'description': 'Fort Railway Station, Sri Lanka'
  },
  {
    'name': 'Colombo International Airport',
    'description': 'Canada Friendship Rd, Katunayake'
  },
  {'name': 'Colombo VIP transfer', 'description': 'Katunayake, Sri Lanka'},
];

class MapLocationList extends StatefulWidget {
  const MapLocationList({Key? key}) : super(key: key);

  @override
  _MapLocationListState createState() => _MapLocationListState();
}

class _MapLocationListState extends State<MapLocationList> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
              color: GlobalColors.bgColorScreen,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Expanded(
                    //   child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(locationData[index]['name']!,
                            style: textTheme.headline6),
                        const SizedBox(height: 10),
                        Text(locationData[index]['description']!,
                            style: textTheme.caption),
                      ],
                    ),
                    // ),
                    const Icon(Icons.add_circle_outline, size: 35)
                  ]));
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
              color: Colors.black,
              height: 2,
              indent: 5,
              endIndent: 5,
              thickness: 2,
            ),
        itemCount: locationData.length);
  }
}
