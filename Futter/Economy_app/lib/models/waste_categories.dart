import 'package:equatable/equatable.dart';

class WasteCategories extends Equatable {
  factory WasteCategories(
    String type, {
    double? wastedAmount,
    double? relationToDollar,
  }) {
    if (wastedAmount != null && relationToDollar != null) {
      return WasteCategories.full(type, {relationToDollar: wastedAmount});
    }

    return WasteCategories.full(type, {});
  }

  const WasteCategories.full(this.type, this.relationAndWastedAmount);

  final String type;
  final Map<double, double> relationAndWastedAmount;

  @override
  List<Object?> get props => [type];

  double get wastedInDollars {
    double total = 0;
    relationAndWastedAmount.forEach((relationToDollar, wastedAmount) {
      total += wastedAmount / relationToDollar;
    });

    return total;
  }

  void addRelationAmount(
    double relationToDollar,
    double wastedAmount,
  ) {
    if (relationAndWastedAmount.containsKey(relationToDollar)) {
      relationAndWastedAmount[relationToDollar] = relationAndWastedAmount[relationToDollar]! + wastedAmount;
      return;
    }
    relationAndWastedAmount.addAll({relationToDollar: wastedAmount});
  }

  void mergeCategories(Map<double, double> relationAndWaste) =>
      relationAndWaste.forEach((key, value) => addRelationAmount(key, value));
}
