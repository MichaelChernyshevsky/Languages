import 'package:flutter/material.dart';

Future<bool> datePicker(BuildContext context) async {
  DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1950),
    lastDate: DateTime(2100),
  );
  if (pickedDate != null) {
    return true;
  } else {
    return false;
  }
}
