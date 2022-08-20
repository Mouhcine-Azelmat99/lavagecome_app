import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final int rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < rating; i++)
          Icon(
            Icons.star,
            size: 15,
            color: Colors.yellow,
          ),
        for (int i = 5; i > rating; i--)
          Icon(
            Icons.star,
            size: 15,
          ),
      ],
    );
  }
}
