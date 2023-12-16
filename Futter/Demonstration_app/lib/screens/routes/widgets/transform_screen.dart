import 'package:flutter/material.dart';

class TransformScreen extends StatefulWidget {
  const TransformScreen({super.key});

  @override
  State<TransformScreen> createState() => _TransformScreenState();
}

late double myAngle = 0;

class _TransformScreenState extends State<TransformScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.rotate(
              angle: myAngle,
              child: Center(
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.pink,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  myAngle += 0.2;
                });
              },
              child: Text("Change angle"),
            )
          ],
        ),
      ),
    );
  }
}
