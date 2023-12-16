import 'package:flutter/material.dart';
import 'package:flutter_application_2/provider/task.provider.dart';
import 'package:flutter_application_2/screens/widget/help/line.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:provider/provider.dart';

class Statictic extends StatelessWidget {
  Statictic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context, listen: false);
    return Container(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  MaterialSymbols.monitoring,
                  size: 30,
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Statictic",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            const LineLarge(),
            const Row(
              children: [
                Expanded(
                    child: Text(
                        "здесь должна быть опциональная статистика но это потом "))
              ],
            ),
            const LineLarge(),
            Text(
                "Number of consecutive days: ${taskProvider.consecutiveCount} "),
            Text("Number daily tasks: ${taskProvider.doneDailyCount}"),
            Text("Number challenges:  ${taskProvider.challengesCount}"),
          ],
        ),
      ),
    );
  }
}
