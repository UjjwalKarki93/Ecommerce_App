import 'package:flutter/material.dart';

import 'rating_progress_indicator.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text('4.7', style: Theme.of(context).textTheme.displayLarge),
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              const RatingProgressIndicator(text: '5', value: 1.0),
              const RatingProgressIndicator(text: '4', value: 0.9),
              const RatingProgressIndicator(text: '3', value: 0.8),
              const RatingProgressIndicator(text: '2', value: 0.5),
              const RatingProgressIndicator(text: '1', value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}
