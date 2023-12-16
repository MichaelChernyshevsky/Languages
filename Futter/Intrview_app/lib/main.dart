import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/interface/routes/app_routes.dart';
import 'package:app_with_apps/manager/thurd_bloc/thurd_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        // BlocProvider<FirstBloc>(create: (context) => FirstBloc()),
        BlocProvider<ThurdBloc>(create: (context) => ThurdBloc()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Some",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      routes: AppRoutes.routes,
    );
  }
}
