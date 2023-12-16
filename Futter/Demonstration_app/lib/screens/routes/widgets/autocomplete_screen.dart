import 'package:flutter/material.dart';

class AutocompleteScreen extends StatelessWidget {
  const AutocompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: const [
            AutocompleteExample(),
          ],
        ),
      ),
    );
  }
}

class AutocompleteExample extends StatelessWidget {
  const AutocompleteExample({super.key});

  static const List<String> _kOptions = <String>[
    '1',
    '2',
    '3',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        print(selection);
      },
    );
  }
}
