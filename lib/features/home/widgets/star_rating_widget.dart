import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pet_care/resources/colors_manager.dart';

class RatingStars extends StatelessWidget {
  final double rating;
  final double size;

  const RatingStars({required this.rating, this.size = 14});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 15,
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 3),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
