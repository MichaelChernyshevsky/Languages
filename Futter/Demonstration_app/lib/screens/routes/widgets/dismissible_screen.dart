import '../../../imports.dart';

class DismissibleScreen extends StatefulWidget {
  const DismissibleScreen({super.key});

  @override
  State<DismissibleScreen> createState() => _DismissibleScreenState();
}

class _DismissibleScreenState extends State<DismissibleScreen> {
  final items = List<String>.generate(20, (i) => 'Item ${i + 1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('$item dismissed')));
            },
            background: Container(color: Colors.red),
            child: ListTile(
              title: Text(item),
            ),
          );
        },
      ),
    );
  }
}
