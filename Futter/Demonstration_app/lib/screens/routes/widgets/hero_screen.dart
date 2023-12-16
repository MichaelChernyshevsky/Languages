import 'package:educational_project/other/examples/sizebox.dart';
import 'package:flutter/material.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: const Hero(
              tag: 'example',
              child: ExampleSizeBox(
                myHeight: 50,
                myWidth: 50,
                text: 'hero widget 1',
              ),
            ),
            onTap: () => _gotoPage(context),
            title: const Text(
              'Tab me',
            ),
          ),
        ],
      ),
    );
  }
}

void _gotoPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute<void>(
    builder: (BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Your Page'),
      ),
      body: const Center(
        child: Hero(
          tag: 'example',
          child: ExampleSizeBox(
            myHeight: 200,
            myWidth: 200,
            text: 'hero widget 2',
          ),
        ),
      ),
    ),
  ));
}
