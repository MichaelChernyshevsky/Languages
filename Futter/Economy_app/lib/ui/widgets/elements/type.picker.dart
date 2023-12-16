import 'package:flutter/cupertino.dart';

class TypePicker extends StatefulWidget {
  const TypePicker({
    required this.typeController,
    super.key,
  });
  final TextEditingController typeController;

  @override
  State<TypePicker> createState() => _TypePickerState();
}

class _TypePickerState extends State<TypePicker> {
  int selecteditem = 0;

  static const List<String> types = <String>[
    'Any',
    'Home',
    'Food',
    'Study',
    'Transport',
    'Medicine',
    'Entertainments',
    'Subscriptions',
    'Clothes',
    'Family',
    'Other'
  ];

  void _showDialog(BuildContext context, Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Type'),
        CupertinoButton(
          child: Text(types[selecteditem]),
          onPressed: () => _showDialog(
            context,
            CupertinoPicker(
              itemExtent: 20,
              onSelectedItemChanged: (int? index) {
                setState(() {
                  selecteditem = index!;
                  widget.typeController.text = types[index];
                });
              },
              children: List<Widget>.generate(types.length, (int index) {
                return Center(
                  child: Text(
                    types[index],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
