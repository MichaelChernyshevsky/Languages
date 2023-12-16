import 'package:educational_project/imports.dart';
import 'package:educational_project/screens/routes/apps/go_router.app/cubits/login_cubit.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

class LoginGoRouterScreen extends StatelessWidget {
  const LoginGoRouterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                context.go(context.namedLocation('home'));
              },
              child: const Text('Home')),
          ElevatedButton(
              onPressed: () {
                context.read<LoginCubit>().login();
              },
              child: const Text('Login')),
        ]),
      ),
    );
  }
}
