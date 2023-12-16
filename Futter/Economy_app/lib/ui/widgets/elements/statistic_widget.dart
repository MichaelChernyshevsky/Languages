import 'package:flutter/material.dart';
import 'package:project/models/waste_categories.dart';

class Statistic extends StatelessWidget {
  const Statistic({
    required this.name,
    required this.sum,
    super.key,
  });

  factory Statistic.fromCategory(WasteCategories category) {
    return Statistic(
      name: category.type,
      sum: category.wastedInDollars.toString(),
    );
  }

  final String name;
  final String sum;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('$sum USD'),
      ],
    );
  }
}
