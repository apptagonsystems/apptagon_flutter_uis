import 'package:apptagon_flutter_uis/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingWidget extends StatelessWidget {
  final num? rating;
  final double ratingSize;
  const RatingWidget({
    Key? key,
    required this.rating,
    required this.ratingSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _ratingWidget();
  }

  Widget _ratingWidget() {
    if (rating != null && rating! > 0) {
      return RatingBar.builder(
        initialRating: rating!.toDouble(),
        minRating: 0,
        unratedColor: Colors.grey[200],
        direction: Axis.horizontal,
        allowHalfRating: true,
        ignoreGestures: true,
        itemCount: 5,
        itemSize: ratingSize,
        itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: AppColors.kPrimaryColor,
        ),
        onRatingUpdate: (rating) {},
      );
    } else {
      return const Text(
        "No reviews",
        style: TextStyle(fontSize: 10, color: Colors.grey),
      );
    }
  }
}
