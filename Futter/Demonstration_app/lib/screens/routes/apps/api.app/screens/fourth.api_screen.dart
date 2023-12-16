import 'dart:convert';

import 'package:educational_project/screens/routes/apps/api.app/models/user.api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiFourthScreen extends StatefulWidget {
  const ApiFourthScreen({super.key});

  @override
  State<ApiFourthScreen> createState() => _ApiFourthScreenState();
}

class _ApiFourthScreenState extends State<ApiFourthScreen> {
  List<UserApi> users = [];
  @override
  void initState() {
    super.initState();
    updateUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final email = user.email;
            final name = user.fullName;
            final imageUrl = user.imageUrl;
            final age = user.age;
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(imageUrl),
              ),
              title: age >= 35 ? Text('milf') : Text('not milf'),
              tileColor: user.gender == 'male' ? Colors.blue : Colors.red,
              subtitle: Text(email),
            );
          }),
    );
  }

  Future<void> updateUsers() async {
    final response = await UserApi.update();
    setState(() {
      users = response;
    });
  }
}
