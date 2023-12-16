import 'package:educational_project/imports.dart';
import 'package:educational_project/screens/routes/apps/go_router.app/cubits/login_cubit.dart';
import 'package:educational_project/screens/routes/apps/go_router.app/models/category.model.dart';
import 'package:go_router/go_router.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryEx> categories = CategoryEx.categories;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => context.read<LoginCubit>().logout(),
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          CategoryEx category = categories[index];
          return ListTile(
            title: Text(category.name),
            onTap: () {
              return context.go(context.namedLocation(
                'product_list',
                params: <String, String>{'category': category.name},
                queryParams: <String, String>{'sort': 'desc', 'filter': '0'},
              ));
            },
          );
        },
      ),
    );
  }
}
