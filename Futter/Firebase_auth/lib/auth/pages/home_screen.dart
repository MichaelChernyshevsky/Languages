// ignore_for_file: avoid_print, library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_save/auth/manager/bloc.dart';
import 'package:flutter_save/auth/pages/signin_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AuthBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<AuthBloc>(context);

    super.initState();
  }

  void logout() {
    bloc.add(LogoutEvent());
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: ElevatedButton(
          onPressed: logout,
          child: const Text("Logout"),
        ),
      ),
    );
  }
}
