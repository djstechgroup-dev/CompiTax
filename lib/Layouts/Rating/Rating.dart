import 'package:compitax/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  late double _rating;

  late int _ratingBarMode;

  IconData? _selectedIcon;

  @override
  void initState() {
    super.initState();
    _rating = 1;
    _ratingBarMode = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Rating Bar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            color: Colors.white,
            onPressed: () async {
              _selectedIcon = await showDialog<IconData>(
                context: context,
                builder: (context) => IconAlert(),
              );
              setState(() {
                _ratingBarMode = 1;
              });
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(children: [
                    _heading('Tap To Rate'),
                    _ratingBar(_ratingBarMode),
                    Text(
                      'Rating: $_rating',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
                const SizedBox(height: 40.0),
                Column(
                  children: const [
                    Text(
                      'Write a review (optional)',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        minLines: 10,
                        maxLines: 15,
                        maxLength: 500,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Type your review",
                            prefixIcon: Icon(Icons.reviews_outlined)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  'Rating Bar Modes',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 3, color: GlobalColors.black.withOpacity(0.8)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _radio(1),
                      // _radio(2),
                      _radio(3),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _heading(String text) => Column(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      );

  Widget _radio(int value) {
    return Expanded(
      child: RadioListTile<int>(
        value: value,
        groupValue: _ratingBarMode,
        dense: true,
        title: Text(
          'Rating Mode $value',
          style: const TextStyle(
            fontSize: 12.0,
          ),
        ),
        onChanged: (value) {
          setState(() {
            _ratingBarMode = value!;
          });
        },
      ),
    );
  }

  Widget _ratingBar(int mode) {
    switch (mode) {
      case 1:
        return RatingBar.builder(
          initialRating: _rating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          unratedColor: Colors.amber.withAlpha(50),
          itemCount: 5,
          itemSize: 50.0,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            _selectedIcon ?? Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
            });
          },
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
      //     onRatingUpdate: (rating) {
      //       setState(() {
      //         _rating = rating;
      //       });
      //     },
      //     updateOnDrag: true,
      //   );
      case 3:
        return RatingBar.builder(
          initialRating: _rating,
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
          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
            });
          },
          updateOnDrag: true,
        );
      default:
        return Container();
    }
  }
}

class IconAlert extends StatelessWidget {
  const IconAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Select Icon',
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      titlePadding: const EdgeInsets.all(12.0),
      contentPadding: const EdgeInsets.all(0),
      content: Wrap(
        children: [
          _iconButton(context, Icons.home),
          _iconButton(context, Icons.airplanemode_active),
          _iconButton(context, Icons.euro_symbol),
          _iconButton(context, Icons.beach_access),
          _iconButton(context, Icons.attach_money),
          _iconButton(context, Icons.music_note),
          _iconButton(context, Icons.android),
          _iconButton(context, Icons.toys),
          _iconButton(context, Icons.language),
          _iconButton(context, Icons.landscape),
          _iconButton(context, Icons.ac_unit),
          _iconButton(context, Icons.star),
        ],
      ),
    );
  }

  Widget _iconButton(BuildContext context, IconData icon) => IconButton(
        icon: Icon(icon),
        onPressed: () => Navigator.pop(context, icon),
        splashColor: Colors.amberAccent,
        color: Colors.amber,
      );
}
