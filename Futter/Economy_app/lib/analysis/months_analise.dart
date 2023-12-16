import 'package:project/models/calculated_month.dart';
import 'package:project/models/money.dart';
import 'package:project/models/waste_categories.dart';

List<CalculatedMonth> analiseNameMonth(List<Money> months) {
  final Set<CalculatedMonth> moneysTypesOnMonths = <CalculatedMonth>{};
  for (final Money month in months) {
    moneysTypesOnMonths.add(CalculatedMonth(month.wastedDate.month, month.wastedDate.year));
    moneysTypesOnMonths
        .firstWhere(
          (CalculatedMonth element) => element.month == month.wastedDate.month && element.year == month.wastedDate.year,
        )
        .addCategory(
          WasteCategories(
            month.type ?? 'Any',
            wastedAmount: month.wastedAmount,
            relationToDollar: month.relationToDollar,
          ),
        );
  }

  return moneysTypesOnMonths.toList();
}

double analiseTotalWaste(List<CalculatedMonth> moneysTypesOnMonths) {
  double totalOfMounth = 0;
  for (int indexOfMounth = 0; indexOfMounth < moneysTypesOnMonths.length; indexOfMounth++) {
    final CalculatedMonth mounth = moneysTypesOnMonths.elementAt(indexOfMounth);
    for (int indexOfType = 0; indexOfType < mounth.wasteCategories.length; indexOfType++) {
      totalOfMounth = totalOfMounth + mounth.wasteCategories.elementAt(indexOfType).wastedInDollars;
    }
  }
  return totalOfMounth;
}
