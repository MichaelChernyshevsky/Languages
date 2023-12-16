import 'package:flutter/cupertino.dart';
import 'package:flutter_application_2/screens/add_screens/addTask_screen.dart';
import 'package:flutter_application_2/screens/home_screen.dart';
import 'package:flutter_application_2/screens/home_screens/challanges/category_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: <GoRoute>[
      // GoRoute(
      //   path: '/login',
      //   name: 'login',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const LoginGoRouterScreen();
      //   },
      // ),
      // goroute работа с переходам по routes при этом дочерние routes имеют такой же путь как в системах
      //       В нашем примере:
      //       / - выбор
      //       /product_list - выбранный путь
      //          в product_list мы используем данные которые выбрал пользователь и выводм их
      GoRoute(
          path: '/',
          name: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
          routes: [
            GoRoute(
              path: 'addTask',
              name: 'AddTask',
              builder: (BuildContext context, GoRouterState state) {
                return const AddTaskScreen();
              },
            ),
            GoRoute(
              path: 'category',
              name: 'Screen chousen category',
              builder: (BuildContext context, GoRouterState state) {
                return const CategoryScreen();
              },
            ),
          ]),
    ],
  );
}
