import '../../../imports.dart';

class DatePickerScreen extends StatefulWidget {
  const DatePickerScreen({super.key});

  @override
  State<DatePickerScreen> createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  DateTime? _selectedDate;

  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          // Show the Date Picker when this button clicked
          ElevatedButton(
              onPressed: _presentDatePicker, child: const Text('Select Date')),

          // display the selected date
          Container(
            padding: const EdgeInsets.all(30),
            child: Text(
              _selectedDate != null
                  ? _selectedDate.toString()
                  : 'No date selected!',
              style: const TextStyle(fontSize: 30),
            ),
          )
        ]),
      ),
    );
  }
}
