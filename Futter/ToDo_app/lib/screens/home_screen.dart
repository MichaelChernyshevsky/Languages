import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/bloc/task_bloc.dart';
import 'package:flutter_application_2/provider/task.provider.dart';
import 'package:flutter_application_2/screens/home_screens/account_screen.dart';
import 'package:flutter_application_2/screens/home_screens/main_screen.dart';
import 'package:flutter_application_2/screens/home_screens/task_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController controller;
  final TextEditingController name = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  AppBar? getTitle(BuildContext context, int index) {
    switch (index) {
      case 0:
        return AppBar(
          title: const Text(
            'Main',
          ),
        );
      case 1:
        return AppBar(
          title: const Text(
            'Daily tasks',
          ),
          actions: [
            IconButton(
              onPressed: () {
                context.go('/addTask');
              },
              icon: const Icon(Icons.add),
            ),
          ],
        );
      case 2:
        return AppBar(
          title: const Text(
            'Profile',
          ),
        );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context, listen: false);

    return Scaffold(
      extendBody: true,
      appBar: getTitle(context, controller.index),
      body: BlocBuilder<TaskBloc, TaskState>(builder: (context, state) {
        return state.when(
          // вход
          loading: () => const CircularProgressIndicator(),
          // ошибка
          error: (_) => const Center(
            child: Text("Error"),
          ),
          // вывод данных
          loaded: (tasks) => TabBarView(
            controller: controller,
            children: [
              const MainScreen(),
              TaskScreen(tasks: tasks),
              const AccounScreen(),
            ],
          ),
        );
      }),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: CustomNavigationBar(
          blurEffect: true,
          isFloating: true,
          borderRadius: const Radius.circular(22),
          iconSize: 22.0,
          selectedColor: const Color(0xff28E71D),
          strokeColor: const Color(0xff1F2358),
          unSelectedColor: const Color(0x5528E71D),
          backgroundColor: const Color(0xff1F2358),
          items: [
            CustomNavigationBarItem(
              icon: const Icon(Icons.home),
            ),
            CustomNavigationBarItem(
              showBadge: taskProvider.futureCount == 0 ? false : true,
              badgeCount: taskProvider.futureCount,
              icon: const Icon(Icons.list_alt_sharp),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.person),
            ),
          ],
          currentIndex: controller.index,
          onTap: (index) {
            setState(() {
              controller.animateTo(index);
            });
          },
        ),
      ),
    );
  }
}
