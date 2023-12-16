class Product {
  final String name;
  final String category;
  final int quantity;

  Product(this.name, this.category, this.quantity);

  static List<Product> products = [
    Product('1', 'Food', 10),
    Product('2', 'Food', 9),
    Product('3', 'Food', 7),
    Product('4', 'Clothes', 3),
    Product('5', 'Clothes', 4),
    Product('6', 'Clothes', 1),
  ];
}
