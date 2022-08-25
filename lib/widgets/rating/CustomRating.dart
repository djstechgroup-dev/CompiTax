import 'package:compitax/theme/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class CustomRating extends StatefulWidget {
  final double ratingNum;
  final int ratingMode;
  final IconData selectedIcon;
  final dynamic chageNumCallback;

  const CustomRating(
      {Key? key,
      required this.ratingNum,
      required this.ratingMode,
      required this.selectedIcon,
      this.chageNumCallback})
      : super(key: key);

  @override
  _CustomRatingState createState() => _CustomRatingState();
}

class _CustomRatingState extends State<CustomRating> {
  late GetStorage __store;

  @override
  void initState() {
    super.initState();
    __store = GetStorage('compitax_data');
  }

  void _handleChangeRating(double num) {
    __store.write('rating', {
      'num': num,
      'mode': widget.ratingMode,
      // 'icon': widget.selectedIcon
    });
    if (widget.chageNumCallback != null) {
      widget.chageNumCallback(num);
    }
  }

  @override
  Widget build(BuildContext context) {
    return _ratingBar(widget.ratingMode);
  }

  Widget _ratingBar(int mode) {
    switch (mode) {
      case 1:
        return RatingBar.builder(
          initialRating: widget.ratingNum,
          minRating: 0.5,
          direction: Axis.horizontal,
          allowHalfRating: true,
          unratedColor: GlobalColors.rating.withAlpha(50),
          itemCount: 5,
          itemSize: 50.0,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            widget.selectedIcon,
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
          initialRating: widget.ratingNum,
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
