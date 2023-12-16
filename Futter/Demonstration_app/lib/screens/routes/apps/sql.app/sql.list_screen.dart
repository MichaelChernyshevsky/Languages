import 'package:educational_project/provider/sql.route.provider.dart';
import 'package:educational_project/widgets/route_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SqlListScreen extends StatelessWidget {
  const SqlListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> routes =
        Provider.of<SqlAppRouteProvider>(context, listen: false).sql;

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 5),
      itemCount: routes.length,
      itemBuilder: (context, index) {
        return RouteContainer(
          index: index + 1,
          route: routes[index],
          tab: () {
            Navigator.of(context).pushNamed(routes[index]);
          },
        );
      },
    );
  }
}
