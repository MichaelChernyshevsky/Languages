import 'package:educational_project/imports.dart';
import 'package:educational_project/screens/routes/apps/go_router.app/cubits/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/router.dart';

class Go_routerApp extends StatelessWidget {
  const Go_routerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Builder(builder: (context) {
        return MaterialApp.router(
          routerConfig: AppRouter(context.read<LoginCubit>()).router,
        );
      }),
    );
  }
}
