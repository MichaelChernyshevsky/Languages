import 'package:educational_project/imports.dart';
import 'package:educational_project/screens/routes/apps/go_router.app/models/product.model.dart';
import 'package:go_router/go_router.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({
    super.key,
    required this.category,
    required this.asc,
    required this.quantity,
  });

  final String category;
  final bool asc;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    List<Product> products = Product.products
        .where(((product) => product.category == category))
        .where(((product) => product.quantity > quantity))
        .toList();

    products.sort((a, b) => a.name.compareTo(b.name));
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              String sort = asc ? 'desc' : 'asc';
              return context.goNamed('product_list',
                  params: <String, String>{'category': category},
                  queryParams: <String, String>{'sort': sort});
            },
            icon: const Icon(Icons.sort),
          ),
          IconButton(
            onPressed: () {
              return context.goNamed('product_list',
                  params: <String, String>{'category': category},
                  queryParams: <String, String>{'filter': '10'});
            },
            icon: const Icon(Icons.filter_alt_rounded),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          for (final Product product in asc ? products : products.reversed)
            ListTile(
              title: Text(product.name),
            )
        ],
      ),
    );
  }
}
