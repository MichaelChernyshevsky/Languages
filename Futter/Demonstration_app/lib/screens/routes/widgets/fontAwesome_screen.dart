// import 'package:flutter/material.dart';

// class name extends StatelessWidget {
//   const name({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: ,
//       ),
//     );
//   }
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeScreen extends StatelessWidget {
  const FontAwesomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: const [
          FaIcon(FontAwesomeIcons.accusoft),
          FaIcon(FontAwesomeIcons.affiliatetheme),
          FaIcon(FontAwesomeIcons.anchor),
        ]),
      ),
    );
  }
}
