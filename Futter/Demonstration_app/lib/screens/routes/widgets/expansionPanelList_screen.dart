import 'package:flutter/material.dart';

class ExpansionPanelListScreen extends StatelessWidget {
  const ExpansionPanelListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _ExpansionPanelListScreen(),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class _ExpansionPanelListScreen extends StatefulWidget {
  @override
  State<_ExpansionPanelListScreen> createState() =>
      _ExpansionPanelListScreenState();
}

class _ExpansionPanelListScreenState extends State<_ExpansionPanelListScreen> {
  final List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle: const Text('Hello'),
              trailing: const Icon(Icons.star),
              onTap: () {}),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
