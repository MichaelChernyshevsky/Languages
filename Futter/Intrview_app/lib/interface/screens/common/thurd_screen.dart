import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/localization/text.dart';
import 'package:app_with_apps/manager/thurd_bloc/thurd_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThurdScreen extends StatefulWidget {
  const ThurdScreen({super.key});

  @override
  State<ThurdScreen> createState() => _ThurdScreenState();
}

class _ThurdScreenState extends State<ThurdScreen> {
  ThurdBloc? _bloc;
  bool loading = false;
  String whether = '0';
  int time = 3;

  @override
  void initState() {
    _bloc = BlocProvider.of<ThurdBloc>(context);
    timer();
    super.initState();
  }

  void timer() {
    const oneDecimal = Duration(seconds: 3);
    Timer.periodic(
      oneDecimal,
      (Timer timer) => setState(
        () {
          if (!loading) {
            if (time >= 3) {
              time = 0;
              whether = '';

              getWhether();
            } else {
              time += 1;
            }
          }
        },
      ),
    );
  }

  void getWhether() => _bloc!.add(GetWhether());

  void setTemp(String temp) => setState(() {
        whether = temp;
        loading = false;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ConstantText.thurdScreen)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Text(
                  ConstantText.temp,
                  style: const TextStyle(fontSize: 40),
                ),
                BlocListener<ThurdBloc, ThurdState>(
                  listener: (context, state) {
                    if (state is WhetherSucess) {
                      setTemp(state.whether);
                    } else if (state is WhetherError) {
                      setTemp('error');
                    } else if (state is WhetherLoading) {
                      setState(() {
                        loading = true;
                      });
                    }
                  },
                  child: whether != ''
                      ? Text(
                          whether,
                          style: const TextStyle(fontSize: 60),
                        )
                      : const CircularProgressIndicator(),
                ),
              ],
            ),
          ),
          loading
              ? const Text('loading')
              : Text('Timer to update: ${(3 - time).toString()}'),
        ],
      )),
    );
  }
}
