import 'dart:convert';

import 'package:educational_project/screens/routes/apps/api.app/models/user.api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiSecondScreen extends StatefulWidget {
  const ApiSecondScreen({super.key});

  @override
  State<ApiSecondScreen> createState() => _ApiSecondScreenState();
}

class _ApiSecondScreenState extends State<ApiSecondScreen> {
  List<UserApi> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final email = user.email;
            final name = user.name;
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
      floatingActionButton: FloatingActionButton(onPressed: update),
    );
  }

  void update() async {
    const url = 'https://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final transformed = results.map((user) {
      return UserApi(
        email: user['email'],
        phone: user['phone'],
        cell: user['cell'],
        nat: user['nat'],
        gender: user['gender'],
        name: user['name']['first'],
        imageUrl: user['picture']['thumbnail'],
        age: user['dob']['age'],
        date: DateTime.parse(user['dob']['date']),
      );
    }).toList();
    setState(() {
      users = transformed;
    });
  }
}
