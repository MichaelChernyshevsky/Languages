import 'dart:convert';

import 'package:educational_project/screens/routes/apps/api.app/models/user.api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiThirdScreen extends StatefulWidget {
  const ApiThirdScreen({super.key});

  @override
  State<ApiThirdScreen> createState() => _ApiThirdScreenState();
}

class _ApiThirdScreenState extends State<ApiThirdScreen> {
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
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(imageUrl),
              ),
              title: Text(name.toString()),
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
