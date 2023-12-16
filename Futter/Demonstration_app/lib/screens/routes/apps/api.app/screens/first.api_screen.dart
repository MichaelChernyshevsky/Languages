
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiFirstScreen extends StatefulWidget {
  const ApiFirstScreen({super.key});

  @override
  State<ApiFirstScreen> createState() => _ApiFirstScreenState();
}

class _ApiFirstScreenState extends State<ApiFirstScreen> {
  List<dynamic> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final email = user['email'];
            final name = user['name']['first'];
            final imageUrl = user['picture']['thumbnail'];
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(imageUrl),
              ),
              title: Text(name.toString()),
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
    setState(() {
      users = json['results'];
    });
  }
}
