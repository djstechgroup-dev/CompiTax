import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';

class MapSearchBar extends StatefulWidget {
  const MapSearchBar({Key? key}) : super(key: key);

  @override
  _MapSearchBarState createState() => _MapSearchBarState();
}

class _MapSearchBarState extends State<MapSearchBar> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
        width: deviceSize.width * 3 / 5,
        decoration: BoxDecoration(
            color: GlobalColors.bgColorScreen,
            borderRadius: BorderRadius.circular(5)),
        child: Row(children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: InputBorder.none,
                hintText: "Search place.",
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: const BoxDecoration(
                  border: Border(
                      left: BorderSide(color: GlobalColors.border, width: 2))),
              child: const Icon(Icons.location_on_outlined)),
          Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: const BoxDecoration(
                  border: Border(
                      left: BorderSide(color: GlobalColors.border, width: 2))),
              child: const Icon(Icons.location_searching_outlined)),
        ]));
  }
}
