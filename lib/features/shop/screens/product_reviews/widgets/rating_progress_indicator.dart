import 'package:flutter/material.dart';
import 'package:t_store_firebase/features/shop/screens/product_reviews/widgets/progress_indicator.dart';

class CRatingProgressIndicator extends StatelessWidget {
  const CRatingProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              CProgressIndicator(
                text: '5',
                value: 1.0,
              ),
              CProgressIndicator(
                text: '4',
                value: 0.8,
              ),
              CProgressIndicator(
                text: '3',
                value: 0.6,
              ),
              CProgressIndicator(
                text: '2',
                value: 0.4,
              ),
              CProgressIndicator(
                text: '1',
                value: 0.2,
              )
            ],
          ),
        )
      ],
    );
  }
}
