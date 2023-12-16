import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackdropFilterScreen extends StatefulWidget {
  const BackdropFilterScreen({super.key});

  @override
  State<BackdropFilterScreen> createState() => _BackdropFilterScreenState();
}

class _BackdropFilterScreenState extends State<BackdropFilterScreen> {
  double mySigma = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton(
            onPressed: () => showAlert(context),
            child: const Text('Show BackDrop Filter'),
          ),
        ));
  }

  Future<void> showAlert(BuildContext context) {
    return showDialog(
        context: context,
        barrierColor: Colors.grey.shade400.withOpacity(0.8),
        builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: AlertDialog(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: const Center(
                  child: Text(
                'Do you want to add more item ?',
                textAlign: TextAlign.center,
              )),
              content: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("AlertDialog with BackdropFilter"),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
