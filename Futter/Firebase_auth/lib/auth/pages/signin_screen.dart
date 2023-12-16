// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_save/auth/manager/bloc.dart';
import 'package:flutter_save/auth/pages/home_screen.dart';
import 'package:flutter_save/auth/pages/resetPassword_screen.dart';
import 'package:flutter_save/auth/pages/signup_screen.dart';
import 'package:flutter_save/auth/widgets/customWidgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

  late AuthBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<AuthBloc>(context);

    super.initState();
  }

  void signIn() => bloc.add(SignInEvent(
      email: _emailTextController.text,
      password: _passwordTextController.text));

  void goToHome() => Navigator.push(
      context, MaterialPageRoute(builder: (context) => const HomeScreen()));

  void goToSignUp() => Navigator.push(
      context, MaterialPageRoute(builder: (context) => const SignUpScreen()));

  void goToResetPassword() => Navigator.push(
      context, MaterialPageRoute(builder: (context) => const ResetPassword()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                const Space(),
                reusableTextField(
                  "Enter UserName",
                  Icons.person_outline,
                  false,
                  _emailTextController,
                ),
                const Space(),
                reusableTextField(
                  "Enter Password",
                  Icons.lock_outline,
                  true,
                  _passwordTextController,
                ),
                const Space(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 35,
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: goToResetPassword,
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.white70),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is SuccessState) {
                      goToHome();
                    } else if (state is ErrorState) {
                      print("error");
                    }
                  },
                  child: firebaseUIButton(
                    context,
                    "Sign In",
                    signIn,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have account?",
                        style: TextStyle(color: Colors.white70)),
                    GestureDetector(
                      onTap: goToSignUp,
                      child: const Text(
                        " Sign Up",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
