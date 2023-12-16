import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.pink,
            child: const Align(
              alignment: Alignment.center,
              child: Text("hello",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
            ),
          ),
        ));
  }
}
