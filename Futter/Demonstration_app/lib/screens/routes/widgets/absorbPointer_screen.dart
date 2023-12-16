import 'package:flutter/material.dart';

class AbsorbPointerScreen extends StatefulWidget {
  const AbsorbPointerScreen({super.key});

  @override
  State<AbsorbPointerScreen> createState() => _AbsorbPointerScreenState();
}

class _AbsorbPointerScreenState extends State<AbsorbPointerScreen> {
  late Color containerColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            color: containerColor,
          ),
          SizedBox(
            width: 200.0,
            height: 100.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  containerColor = Colors.red;
                });
              },
              child: const Text("Change on red color"),
            ),
          ),
          SizedBox(
            width: 100.0,
            height: 200.0,
            child: AbsorbPointer(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    containerColor = Colors.green;
                  });
                },
                child: const Text("Change on green color"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
