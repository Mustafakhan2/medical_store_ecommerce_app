// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class BelowCateroriesRow extends StatelessWidget {
  const BelowCateroriesRow({
    required this.categorytext,
    required this.Color1,
    required this.Color2,
    super.key,
  });

  final categorytext;
  final Color1;
  final Color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 180,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: 70,
          height: 75,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color1,
                Color2,
              ],
            ),
            borderRadius: const BorderRadius.all(Radius.circular(50)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Text(categorytext),
        ),
      ]),
    );
  }
}
