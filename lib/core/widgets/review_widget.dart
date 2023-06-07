import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: Colors.grey.shade200,
      padding: const EdgeInsets.all(8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('Reviews(100)', style: TextStyle(fontSize: 14)),
        Row(
          children: [
            const Text('4.33',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            Expanded(
              child: RatingBar.builder(
                itemSize: 30,
                initialRating: 4.3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            )
          ],
        )
      ]),
    );
  }
}
