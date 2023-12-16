import 'package:flutter/material.dart';
import 'package:flutter_application_2/bloc/task_bloc.dart';
import 'package:flutter_application_2/provider/apps.provider.dart';
import 'package:flutter_application_2/provider/task.provider.dart';
import 'package:flutter_application_2/provider/user.provider.dart';
import 'package:flutter_application_2/service/user_tasks/hive_service.dart';
import 'package:flutter_application_2/service/user_tasks/task_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'config/router.dart';

Future<void> main() async {
  await Hive.initFlutter();

  GetIt.I.registerSingletonAsync<HiveService>(
    () async {
      final HiveService hiveService = HiveService();
      await hiveService.init();
      return hiveService;
    },
  );
  GetIt.I.registerSingletonWithDependencies<TaskRepository>(
    () => TaskRepository(),
    dependsOn: [HiveService],
  );

  await GetIt.I.allReady();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => User(),
        ),
        ChangeNotifierProvider(
          create: (_) => TaskProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AppTask(),
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TaskBloc(GetIt.I.get<TaskRepository>()),
      child: MaterialApp.router(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0x991B3049),
          primaryColor: Colors.grey,
          appBarTheme: const AppBarTheme(
              color: Color(0xff1B3049),
              titleTextStyle: TextStyle(
                color: Color(0xff94C721),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              iconTheme: IconThemeData(
                color: Color(0xff94C721),
              )),
          fontFamily: GoogleFonts.kanit().fontFamily,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter().router,
      ),
    );
  }
}
