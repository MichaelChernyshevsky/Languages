import 'package:flutter/material.dart';
import 'package:project/analysis/months_analise.dart';
import 'package:project/models/calculated_month.dart';
import 'package:project/models/money.dart';
import 'package:project/provider/user.provider.dart';
import 'package:project/ui/widgets/elements/statistic_widget.dart';
import 'package:provider/provider.dart';

class DataView extends StatefulWidget {
  const DataView({
    required this.months,
    super.key,
  });

  final List<Money> months;

  @override
  State<DataView> createState() => _DataViewState();
}

class _DataViewState extends State<DataView> {
  late final List<CalculatedMonth> calculatedMoneysTypesOnMonths;
  late double totalOfMounth;

  @override
  void initState() {
    super.initState();
    calculatedMoneysTypesOnMonths = analiseNameMonth(widget.months);
    totalOfMounth = analiseTotalWaste(calculatedMoneysTypesOnMonths);
    Provider.of<UserProvider>(context, listen: false).setTotalWaste(totalOfMounth);
  }

  Color? season(int date) {
    if (date == 1 || date == 2 || date == 12) {
      return Colors.blue[400];
    } else if (date == 3 || date == 4 || date == 5) {
      return Colors.green[400];
    } else if (date == 6 || date == 7 || date == 8) {
      return Colors.yellow[400];
    } else {
      return Colors.orange[400];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: calculatedMoneysTypesOnMonths.length,
        padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
        itemBuilder: (context, index) {
          final CalculatedMonth elements = calculatedMoneysTypesOnMonths.elementAt(index);
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: season(
                calculatedMoneysTypesOnMonths.elementAt(index).month,
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            margin: const EdgeInsets.only(bottom: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      calculatedMoneysTypesOnMonths.elementAt(index).toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: elements.wasteCategories.length,
                  itemBuilder: (context, index) {
                    return Statistic.fromCategory(
                      elements.wasteCategories.elementAt(index),
                    );
                  },
                ),
                Statistic(name: 'Total:', sum: totalOfMounth.toString())
              ],
            ),
          );
        },
      ),
    );
  }
}
