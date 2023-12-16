// ignore_for_file: library_private_types_in_public_api

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_save/auth/manager/bloc.dart';
import 'package:flutter_save/auth/widgets/customWidgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _emailTextController = TextEditingController();

  late AuthBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<AuthBloc>(context);

    super.initState();
  }

  void resetPassword() =>
      bloc.add(ResetPasswordEvent(email: _emailTextController.text));

  void goBack() => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Reset Password",
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
                reusableTextField(
                  "Enter Email Id",
                  Icons.person_outline,
                  false,
                  _emailTextController,
                ),
                const Space(),
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is SuccessState) {
                      goBack();
                    } else if (state is ErrorState) {
                      print("error");
                    }
                  },
                  child: firebaseUIButton(
                    context,
                    "Reset Password",
                    resetPassword,
                  ),
                ),
              ],
            ),
          ))),
    );
  }
}
