import 'package:flutter/material.dart';

class PakageSize extends StatelessWidget {
  PakageSize({super.key, required this.pellets, required this.price});
  String price;
  String pellets;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 80,
            color: const Color.fromARGB(255, 228, 227, 227),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  price,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(pellets),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
