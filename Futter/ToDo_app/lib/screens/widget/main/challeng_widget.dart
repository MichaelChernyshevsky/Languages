import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/categories.dart';
import 'package:flutter_application_2/provider/apps.provider.dart';
import 'package:flutter_application_2/screens/widget/help/line.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class Challanges extends StatelessWidget {
  Challanges({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    MaterialSymbols.receipt,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Challenges",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              const LineLarge(),
              ...Categories.values
                  .asMap()
                  .map((index, category) => MapEntry(index,
                      _ChallengeButton(category: category, index: index + 1)))
                  .values
            ],
          ),
        ));
  }
}

class _ChallengeButton extends StatelessWidget {
  const _ChallengeButton({required this.category, required this.index});

  final Categories category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Provider.of<AppTask>(context, listen: false).category = category;

            context.go('/category');
          },
          child: Text(
            '$index. $category',
            style: const TextStyle(fontSize: 20),
          ),
        ),
        const LineSmall(),
      ],
    );
  }
}
