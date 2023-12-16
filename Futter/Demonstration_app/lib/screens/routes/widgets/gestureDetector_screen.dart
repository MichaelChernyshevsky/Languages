import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({super.key});

  @override
  State<GestureDetectorScreen> createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  bool _lightIsOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.star,
                  color: _lightIsOn ? Colors.red : Colors.green,
                  size: 60,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _lightIsOn = !_lightIsOn;
                  });
                },
                child: Container(
                  color: Colors.yellow.shade600,
                  padding: const EdgeInsets.all(8),
                  child: Text(_lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
                ),
              ),
            ],
          ),
        ));
  }
}
