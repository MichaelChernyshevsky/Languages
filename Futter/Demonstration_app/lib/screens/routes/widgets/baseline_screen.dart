import 'package:flutter/material.dart';

class BaselineScreen extends StatefulWidget {
  const BaselineScreen({super.key});

  @override
  State<BaselineScreen> createState() => _BaselineScreenState();
}

class _BaselineScreenState extends State<BaselineScreen> {
  double mybaseline = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.teal,
              child: Baseline(
                baseline: mybaseline,
                baselineType: TextBaseline.alphabetic,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    mybaseline += 10;
                  });
                },
                child: const Text("+ baseline")),
          ],
        ),
      ),
    );
  }
}
