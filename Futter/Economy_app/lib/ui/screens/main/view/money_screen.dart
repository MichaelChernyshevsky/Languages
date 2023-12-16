import 'package:flutter/material.dart';
import 'package:project/models/money.dart';
import 'package:project/ui/widgets/main/moneys_list.dart';

class MoneyScreen extends StatefulWidget {
  const MoneyScreen({
    required this.moneyList,
    super.key,
  });

  final List<Money> moneyList;

  @override
  State<MoneyScreen> createState() => _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MoneysList(
          moneysList: widget.moneyList,
        ),
      ],
    );
  }
}
