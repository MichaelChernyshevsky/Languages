import 'package:equatable/equatable.dart';
import 'package:project/models/waste_categories.dart';

class CalculatedMonth extends Equatable {
  factory CalculatedMonth(int month, int year) {
    return CalculatedMonth.full(month, year, <WasteCategories>{});
  }

  const CalculatedMonth.full(
    this.month,
    this.year,
    this.wasteCategories,
  );
  final int month;
  final int year;
  final Set<WasteCategories> wasteCategories;

  void addCategory(WasteCategories wasteCategory) {
    if (!wasteCategories.add(wasteCategory)) {
      wasteCategories
          .firstWhere((WasteCategories element) => element == wasteCategory)
          .mergeCategories(wasteCategory.relationAndWastedAmount);
    }
  }

  @override
  List<Object?> get props => <Object?>[month, year];

  @override
  String toString() {
    return '$year / $month';
  }
}
