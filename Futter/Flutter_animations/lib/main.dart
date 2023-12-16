import 'package:app_with_apps/core/localization/app_localization.dart';
import 'package:app_with_apps/core/manager/bloc/bloc.dart';
import 'package:app_with_apps/core/manager/get.it/app_provider.dart';
import 'package:app_with_apps/core/manager/provider/ordinaryProvider.dart';
import 'package:app_with_apps/interface/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() {
  GetIt.I.registerSingleton<AppProvider>(AppProvider());

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => OrdinaryProvider(),
        ),
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
      ),
      title: AppLocalizations.current.appName,
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      routes: AppRoutes.routes,
    );
  }
}
