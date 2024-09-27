import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Overall Rating
        const Column(
          children: [
            Text(
              "4.4",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 30,
            ),
            SizedBox(height: 10),
            Text(
              "923 Ratings\nand 257 Reviews",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(width: 30),

        // Ratings Bar Chart
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRatingBar(5, 0.67),
              _buildRatingBar(4, 0.20),
              _buildRatingBar(3, 0.07),
              _buildRatingBar(2, 0.0),
              _buildRatingBar(1, 0.02),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildRatingBar(int stars, double percentage) {
  return Row(
    children: [
      Text("$stars ★"),
      const SizedBox(width: 10),
      Expanded(
        child: LinearProgressIndicator(
          value: percentage,
          backgroundColor: Colors.grey[300],
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
      ),
      const SizedBox(width: 10),
      Text("${(percentage * 100).round()}%"),
    ],
  );
}
