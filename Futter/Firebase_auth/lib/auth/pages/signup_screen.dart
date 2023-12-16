// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_save/auth/manager/bloc.dart';
import 'package:flutter_save/auth/pages/home_screen.dart';
import 'package:flutter_save/auth/widgets/customWidgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();

  late AuthBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<AuthBloc>(context);
    super.initState();
  }

  void signUp() => bloc.add(SignUpEvent(
      email: _emailTextController.text,
      password: _passwordTextController.text));

  void goToHome(context) => Navigator.push(
      context, MaterialPageRoute(builder: (context) => const HomeScreen()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const Space(),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _userNameTextController),
                const Space(),
                reusableTextField("Enter Email Id", Icons.person_outline, false,
                    _emailTextController),
                const Space(),
                reusableTextField("Enter Password", Icons.lock_outlined, true,
                    _passwordTextController),
                const Space(),
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is SuccessState) {
                      goToHome(context);
                    } else if (state is ErrorState) {
                      print("error");
                    }
                  },
                  child: firebaseUIButton(context, "Sign Up", signUp),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
