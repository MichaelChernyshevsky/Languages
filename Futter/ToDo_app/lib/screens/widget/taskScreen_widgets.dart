import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    required this.current,
  });
  final int current;
  @override
  Widget build(BuildContext context) {
    if (current == 0) {
      return Image.asset(
        "assets/day.png",
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width,
      );
    } else if (current == 1) {
      return Container(
        color: Colors.yellow[400],
        child: Image.asset(
          "assets/evening.png",
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
        ),
      );
    } else if (current == 2) {
      return Container(
        color: Colors.blue[900],
        child: Image.asset(
          "assets/evening.png",
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
        ),
      );
    } else {
      return Container(
        color: Colors.grey,
        child: Image.asset(
          "assets/evening.png",
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
        ),
      );
    }
  }
}

class Time extends StatelessWidget {
  const Time({
    super.key,
    required this.current,
  });
  final int current;

  @override
  Widget build(BuildContext context) {
    if (current == 0) {
      return Text("0");
    } else if (current == 1) {
      return Text("1");
    } else if (current == 2) {
      return Text("2");
    } else {
      return Text("3");
    }
  }
}
