import 'dart:async';

import 'package:educational_project/imports.dart';
import 'package:educational_project/screens/routes/apps/go_router.app/cubits/login_cubit.dart';
import 'package:educational_project/screens/routes/apps/go_router.app/screens/category_screen.dart';
import 'package:educational_project/screens/routes/apps/go_router.app/screens/login.go_router_screen.dart';
import 'package:educational_project/screens/routes/apps/go_router.app/screens/products.list.go_router.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final LoginCubit loginCubit;
  AppRouter(this.loginCubit);

  late final GoRouter router = GoRouter(
      debugLogDiagnostics: true,
      routes: <GoRoute>[
        GoRoute(
          path: '/login',
          name: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginGoRouterScreen();
          },
        ),
        // goroute работа с переходам по routes при этом дочерние routes имеют такой же путь как в системах
        //       В нашем примере:
        //       / - выбор
        //       /product_list - выбранный путь
        //          в product_list мы используем данные которые выбрал пользователь и выводм их
        GoRoute(
            path: '/',
            name: 'home',
            builder: (BuildContext context, GoRouterState state) {
              return const CategoryScreen();
            },
            routes: [
              GoRoute(
                path: 'product_list/:category',
                name: 'product_list',
                builder: (BuildContext context, GoRouterState state) {
                  return ProductsListScreen(
                    category: state.params['category']!,
                    asc: state.queryParams['sort'] == 'asc',
                    quantity: int.parse(state.queryParams['filter'] ?? '0'),
                  );
                },
              ),
            ]),
      ],
      redirect: (BuildContext context, GoRouterState state) {
        // check user
        final bool loggedIn =
            loginCubit.state.status == AuthStatus.authenticated;
        // check if the user is loggin in
        final bool loggingIn = state.subloc == '/login';
        if (!loggedIn) {
          return loggingIn ? null : '/login';
        }
        if (loggingIn) {
          return '/';
        }
        return null;
      },
      refreshListenable: GGoRouterRefreshStream(loginCubit.stream));
}

class GGoRouterRefreshStream extends ChangeNotifier {
  GGoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription =
        stream.asBroadcastStream().listen((dynamic _) => notifyListeners());
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
