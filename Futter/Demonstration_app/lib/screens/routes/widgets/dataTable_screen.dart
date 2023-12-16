import 'package:educational_project/imports.dart';

class DataTableScreen extends StatefulWidget {
  DataTableScreen({super.key});
  static const int numItems = 3;

  @override
  State<DataTableScreen> createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  late List<bool> selected =
      List<bool>.generate(DataTableScreen.numItems, (int index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              child: DataTable(
                columns: const <DataColumn>[
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Name',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Age',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        'Role',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Sarah')),
                      DataCell(Text('19')),
                      DataCell(Text('Student')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Janine')),
                      DataCell(Text('43')),
                      DataCell(Text('Professor')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('William')),
                      DataCell(Text('27')),
                      DataCell(Text('Associate Professor')),
                    ],
                  ),
                ],
              ),
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Number'),
                ),
              ],
              rows: List<DataRow>.generate(
                DataTableScreen.numItems,
                (int index) => DataRow(
                  color: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    // All rows will have the same selected color.
                    if (states.contains(MaterialState.selected)) {
                      return Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.08);
                    }
                    // Even rows will have a grey color.
                    if (index.isEven) {
                      return Colors.grey.withOpacity(0.3);
                    }
                    return null;
                  }),
                  cells: <DataCell>[DataCell(Text('Row $index'))],
                  selected: selected[index],
                  onSelectChanged: (bool? value) {
                    setState(() {
                      selected[index] = value!;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
