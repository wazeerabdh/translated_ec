import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class RatingBara extends StatelessWidget {
    RatingBara({super.key, required this.input, required this.input2, required this.input3, required this.input4});
final double input;
final double input2;
final double input3;
final int input4;
  @override
  Widget build(BuildContext context) {
    return             RatingBar.builder(
      itemSize: input,
      initialRating: input2,
      minRating: input3,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: input4,
      itemPadding: const EdgeInsets.symmetric(
          horizontal: 2),
      itemBuilder: (context, _) {
        return const Icon(
          Icons.star,
          size: 10,
          color: Colors.amber,
        );
      },
      onRatingUpdate: (rating) {},
    );
  }
}
