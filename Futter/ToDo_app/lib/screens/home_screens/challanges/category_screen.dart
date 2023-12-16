import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/task.dart';
import 'package:flutter_application_2/provider/apps.provider.dart';
import 'package:flutter_application_2/screens/widget/help/taskCard.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = Provider.of<AppTask>(context, listen: false).getList();
    return Scaffold(
      appBar: AppBar(
        title: Text("${Provider.of<AppTask>(context, listen: false).category}"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return TaskCard(
              icon: tasks[index].icon,
              color: tasks[index].iconColor,
              name: tasks[index].name);
        },
      ),
    );
  }
}
