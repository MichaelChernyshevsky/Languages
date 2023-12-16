import 'package:flutter/material.dart';

class PositionedScreen extends StatefulWidget {
  const PositionedScreen({super.key});

  @override
  State<PositionedScreen> createState() => _PositionedScreenState();
}

class _PositionedScreenState extends State<PositionedScreen> {
  late double myTop = 10;
  late double myLeft = 50;
  late double myRight = 50;
  late double myBottom = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: Stack(children: [
              Container(
                color: Colors.black,
                width: 300,
                height: 300,
              ),
              AnimatedPositioned(
                  top: myTop,
                  left: myLeft,
                  right: myRight,
                  bottom: myBottom,
                  duration: const Duration(seconds: 2),
                  child: const Icon(
                    Icons.adjust_sharp,
                    color: Colors.amber,
                  )),
            ]),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myLeft += 10;
                        });
                      },
                      child: const Text("- left")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myRight += 10;
                        });
                      },
                      child: const Text("- right")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myTop += 10;
                        });
                      },
                      child: const Text("- top")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myBottom += 10;
                        });
                      },
                      child: const Text("- bottom")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myLeft -= 10;
                        });
                      },
                      child: const Text("+ left")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myRight -= 10;
                        });
                      },
                      child: const Text("+ right")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myTop -= 10;
                        });
                      },
                      child: const Text("+ top")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          myBottom -= 10;
                        });
                      },
                      child: const Text("+ bottom")),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
