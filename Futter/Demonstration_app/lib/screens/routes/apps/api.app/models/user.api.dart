import 'dart:convert';
import 'package:http/http.dart' as http;

class UserApi {
  final String name;
  final String imageUrl;
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final DateTime date;
  final int age;

  UserApi({
    required this.age,
    required this.date,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.gender,
    required this.name,
    required this.imageUrl,
  });

  static Future<List<UserApi>> update() async {
    const url = 'https://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final transformed = results.map((user) {
      return UserApi(
          age: user['dob']['age'],
          date: DateTime.parse(user['dob']['date']),
          email: user['email'],
          phone: user['phone'],
          cell: user['cell'],
          nat: user['nat'],
          gender: user['gender'],
          name: user['name']['first'],
          imageUrl: user['picture']['thumbnail']);
    }).toList();
    return transformed;
  }

  String get fullName {
    return 'name';
  }
}
