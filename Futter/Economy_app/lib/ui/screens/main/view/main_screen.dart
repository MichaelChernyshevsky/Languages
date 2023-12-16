import 'package:flutter/material.dart';
// import 'package:project/analysis/months.dart';
import 'package:project/models/money.dart';
import 'package:project/ui/widgets/main/date_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    required this.moneysList,
    super.key,
  });

  final List<Money> moneysList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (moneysList.isNotEmpty)
          DataView(
            months: moneysList,
          )
        else
          const Text('So far there are no records')
      ],
    );
  }
}
