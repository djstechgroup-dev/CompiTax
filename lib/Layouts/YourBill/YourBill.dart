import 'package:compitax/theme/colors.dart';
import 'package:compitax/widgets/IconAlert.dart';
import 'package:compitax/widgets/layout/AppLayout.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';

class YourBill extends StatefulWidget {
  const YourBill({Key? key}) : super(key: key);

  @override
  _YourBillState createState() => _YourBillState();
}

class _YourBillState extends State<YourBill> {
  final GetStorage __store = GetStorage('compitax_data');
  late double _ratingNum;
  late int _ratingBarMode;
  late IconData _selectedIcon;

    @override
  void initState() {
    super.initState();
    _ratingNum = __store.read('rating')['num'] ?? 1.0;
    _ratingBarMode = __store.read('rating')['mode'] ?? 1;
    _selectedIcon = __store.read('rating')['icon'] ?? Icons.star;
  }


  void _handleChangeRating(double rating) {
    __store.write('rating',
        {'num': rating, 'mode': _ratingBarMode, 'icon': _selectedIcon});
    setState(() {
      _ratingNum = rating;
    });
  }

  void _handleChangeRatingMode(int? ratingMode) {
    __store.write('rating',
        {'num': _ratingNum, 'mode': ratingMode, 'icon': _selectedIcon});
    setState(() {
      _ratingBarMode = ratingMode ?? 1;
    });
  }

  void _handleChangeRatingIcon(IconData icon) {
    __store.write(
        'rating', {'num': _ratingNum, 'mode': _ratingBarMode, 'icon': icon});
    setState(() {
      _selectedIcon = icon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
        appbar: AppBar(
          title: const Text('Flutter Rating Bar'),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              color: Colors.white,
              onPressed: () async {
                IconData? result = await showDialog<IconData>(
                  context: context,
                  builder: (context) => IconAlert(),
                );
                _handleChangeRatingIcon(result!);
                _handleChangeRatingMode(1);
              },
            ),
          ],
        ),
        body: _ratingBar(_ratingBarMode));
  }

  Widget _ratingBar(int mode) {
    switch (mode) {
      case 1:
        return RatingBar.builder(
          initialRating: _ratingNum,
          minRating: 0.5,
          direction: Axis.horizontal,
          allowHalfRating: true,
          unratedColor: GlobalColors.rating.withAlpha(50),
          itemCount: 5,
          itemSize: 50.0,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            _selectedIcon,
            color: GlobalColors.rating,
          ),
          onRatingUpdate: _handleChangeRating,
          updateOnDrag: true,
        );
      // // image rating
      // case 2:
      //   return RatingBar(
      //     initialRating: _initialRating,
      //     direction: Axis.horizontal,
      //     allowHalfRating: true,
      //     itemCount: 5,
      //     ratingWidget: RatingWidget(
      //       full: _image('assets/heart.png'),
      //       half: _image('assets/heart_half.png'),
      //       empty: _image('assets/heart_border.png'),
      //     ),
      //     itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      //     onRatingUpdate: _handleRatingUpdate,
      //     updateOnDrag: true,
      //   );
      case 3:
        return RatingBar.builder(
          initialRating: _ratingNum,
          direction: Axis.horizontal,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return const Icon(
                  Icons.sentiment_very_dissatisfied,
                  color: Colors.red,
                );
              case 1:
                return const Icon(
                  Icons.sentiment_dissatisfied,
                  color: Colors.redAccent,
                );
              case 2:
                return const Icon(
                  Icons.sentiment_neutral,
                  color: Colors.amber,
                );
              case 3:
                return const Icon(
                  Icons.sentiment_satisfied,
                  color: Colors.lightGreen,
                );
              case 4:
                return const Icon(
                  Icons.sentiment_very_satisfied,
                  color: Colors.green,
                );
              default:
                return Container();
            }
          },
          onRatingUpdate: _handleChangeRating,
          updateOnDrag: true,
        );
      default:
        return Container();
    }
  }
}
