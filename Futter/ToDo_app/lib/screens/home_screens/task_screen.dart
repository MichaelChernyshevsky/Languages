import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/task.dart';
import 'package:flutter_application_2/screens/widget/help/taskCard.dart';
import 'package:flutter_application_2/screens/widget/taskScreen_widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key, required this.tasks});
  final List<Task> tasks;

  @override
  State<TaskScreen> createState() => _TaskScreenState(tasks);
}

class _TaskScreenState extends State<TaskScreen> {
  final List<Task> tasks;

  List<String> items = ["Morning", "Day", "Evening", "All"];

  List<IconData> icons = [
    Icons.home,
    Icons.explore,
    Icons.home,
    Icons.explore,
  ];

  int current = 3;

  _TaskScreenState(this.tasks);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background(
        //   current: current,
        // ),
        // Column(
        //   children: [
        //     SizedBox(
        //       width: double.infinity,
        //       height: 60,
        //       child: ListView.builder(
        //           physics: const BouncingScrollPhysics(),
        //           itemCount: items.length,
        //           scrollDirection: Axis.horizontal,
        //           itemBuilder: (ctx, index) {
        //             return Column(
        //               children: [
        //                 GestureDetector(
        //                   onTap: () {
        //                     setState(() {
        //                       current = index;
        //                     });
        //                   },
        //                   child: AnimatedContainer(
        //                     duration: const Duration(milliseconds: 300),
        //                     margin: const EdgeInsets.all(5),
        //                     width: 80,
        //                     height: 45,
        //                     decoration: BoxDecoration(
        //                       color: current == index
        //                           ? Colors.white70
        //                           : Colors.white54,
        //                       borderRadius: current == index
        //                           ? BorderRadius.circular(15)
        //                           : BorderRadius.circular(10),
        //                       border: current == index
        //                           ? Border.all(
        //                               color: Colors.deepPurpleAccent, width: 2)
        //                           : null,
        //                     ),
        //                     child: Center(
        //                       child: Text(
        //                         items[index],
        //                         style: TextStyle(
        //                             color: current == index
        //                                 ? Colors.black
        //                                 : Colors.grey),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 Visibility(
        //                     visible: current == index,
        //                     child: Container(
        //                       width: 5,
        //                       height: 5,
        //                       decoration: const BoxDecoration(
        //                           color: Colors.deepPurpleAccent,
        //                           shape: BoxShape.circle),
        //                     ))
        //               ],
        //             );
        //           }),
        //     ),
        //     taskList(tasks, current) as Widget,
        //     // Container(
        //     //   margin: const EdgeInsets.only(top: 30),
        //     //   child: Time(
        //     //     current: current,
        //     //   ),
        //     // ),
        //   ],
        // ),
        Text("data"),
        taskList(tasks, current)
      ],
    );
  }

  Widget taskList(List<Task> tasks, int index) {
    if (index == 0) {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: const Text('0'),
      );
    } else if (index == 1) {
      return const Column(
        children: [Text('1')],
      );
    } else if (index == 2) {
      return const Column(
        children: [Text('2')],
      );
    } else if (index == 3) {
      return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(
            "$index",
            style: TextStyle(color: Colors.red),
          );
          //   return TaskCard(
          //       icon: tasks[index].icon,
          //       color: tasks[index].iconColor,
          //       name: tasks[index].name);
        },
      );
    } else {
      return const Center(
        child: Text(
          "Some error",
          style: TextStyle(fontSize: 40, color: Colors.red),
        ),
      );
    }
  }
}
