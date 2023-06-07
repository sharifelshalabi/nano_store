import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Review extends StatelessWidget {
  final double initialRating;
  final int ratingCount;

  const Review(
      {Key? key, required this.initialRating, required this.ratingCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: Colors.grey.shade200,
      padding: const EdgeInsets.all(8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Reviews($ratingCount)', style: const TextStyle(fontSize: 14)),
        Row(
          children: [
            Text(initialRating.toString(),
                style:
                const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            Expanded(
              child: RatingBar.builder(
                itemSize: 30,
                initialRating: initialRating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            )
          ],
        )
      ]),
    );
  }
}
