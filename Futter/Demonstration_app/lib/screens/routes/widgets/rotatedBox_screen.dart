import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RotatedBoxScreen extends StatefulWidget {
  const RotatedBoxScreen({super.key});

  @override
  State<RotatedBoxScreen> createState() => _RotatedBoxScreenState();
}

class _RotatedBoxScreenState extends State<RotatedBoxScreen> {
  int myQuarterTurns = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RotatedBox(
                    quarterTurns: myQuarterTurns,
                    child: const Text(
                      'Hello World!',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                        'sDKDbdkBDKjdjVDZXZX,X,M<XNX,NXM,XM<X<X<XX,MX,X,,XX<X<MKKKKKK;;,;;MBBJMLKX<XN<XN<XLXLlLXlkxnxlxS'),
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: (() {
                  setState(() {
                    myQuarterTurns += 1;
                  });
                }),
                child: const Text("+90")),
          ],
        ),
      ),
    );
  }
}
