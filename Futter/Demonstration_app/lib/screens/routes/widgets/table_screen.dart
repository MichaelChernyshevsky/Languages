import 'package:educational_project/other/examples/text.message.dart';
import 'package:educational_project/other/examples/sizebox.dart';
import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.top,
        children: const [
          TableRow(children: [
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 100),
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 300),
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 10),
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 100),
          ]),
          TableRow(children: [
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 100),
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 300),
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 10),
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 100),
          ]),
          TableRow(children: [
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 100),
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 300),
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 10),
            ExampleSizeBox(text: "", myWidth: 50, myHeight: 100),
          ])
        ],
      )),
    );
  }
}
