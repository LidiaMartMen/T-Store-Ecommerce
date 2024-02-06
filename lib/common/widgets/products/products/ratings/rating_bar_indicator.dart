import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:t_store_firebase/utils/utils.dart';

class CRatingBarIndicator extends StatelessWidget {
  final double rating;

  const CRatingBarIndicator({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (_, __) => const Icon(
        Icons.star_rate_rounded,
        color: CColors.primary,
      ),
      rating: rating,
      itemSize: 20,
      unratedColor: CColors.grey,
    );
  }
}
