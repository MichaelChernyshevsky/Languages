enum Categories {
  all,
  eco,
  health,
  seftDevelopment;

  @override
  String toString() {
    switch (this) {
      case Categories.all:
        return 'All Tasks';
      case Categories.eco:
        return 'Eco';
      case Categories.health:
        return 'Health';
      case Categories.seftDevelopment:
        return 'Self-development';
    }
  }
}
