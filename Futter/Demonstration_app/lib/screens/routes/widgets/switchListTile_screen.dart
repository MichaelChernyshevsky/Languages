import 'package:flutter/material.dart';

class SwitchListTileScreen extends StatelessWidget {
  const SwitchListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _lights1 = false;
  bool _lights2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SwitchListTile(
          title: const Text('Lights'),
          subtitle: const Text("Are you sure?"),
          value: _lights1,
          onChanged: (bool value) {
            setState(() {
              _lights1 = value;
            });
          },
          secondary: _lights1 == false
              ? const Icon(Icons.lightbulb_outline)
              : const Icon(
                  Icons.lightbulb_outline,
                  color: Colors.yellow,
                ),
        ),
        SwitchListTile(
          title: const Text('Lights'),
          subtitle: const Text("Are you sure?"),
          value: _lights2,
          onChanged: (bool value) {
            setState(() {
              _lights2 = value;
            });
          },
          tileColor: _lights2 == false ? Colors.red : Colors.green,
          secondary: _lights2 == false
              ? const Icon(Icons.lightbulb_outline)
              : const Icon(
                  Icons.lightbulb_outline,
                  color: Colors.yellow,
                ),
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ],
    );
  }
}
