import 'package:educational_project/imports.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // расположение кнопки
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // кнопка
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        foregroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        // расстояние между кнопкой и bottomNavigationBar
        notchMargin: 10,
        // 'обводка'
        shape: const CircularNotchedRectangle(),
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.home),
            Icon(Icons.home),
          ],
        ),
      ),
    );
  }
}
