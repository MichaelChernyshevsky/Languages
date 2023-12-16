import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/blocs/money_bloc/money_bloc.dart';
import 'package:project/blocs/money_bloc/money_event.dart';
import 'package:project/models/money.dart';
import 'package:project/service/notification.dart';
import 'package:project/ui/widgets/elements/type.picker.dart';
import 'package:project/ui/widgets/focus_widget.dart';

Future<void> addSpending(
  BuildContext context,
) async {
  final MoneyBloc bloc = BlocProvider.of<MoneyBloc>(context);
  // переменные которые будут предаваться
  final TextEditingController wastedAmountController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController typeController = TextEditingController(text: 'Any');
  final TextEditingController walueController = TextEditingController();
  final TextEditingController relationToDollarController = TextEditingController();
  final DateTime wastedDate = DateTime.now();

  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return FocusWidget(
        child: AlertDialog(
          backgroundColor: Colors.pink,
          title: const Text('Create new waste'),
          titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          actionsOverflowButtonSpacing: 20,
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(hintText: 'Amount'),
                  keyboardType: TextInputType.number,
                  controller: wastedAmountController,
                ),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Description (not necessary)',
                  ),
                  controller: descriptionController,
                ),
                TextField(
                  decoration: const InputDecoration(hintText: 'Walue'),
                  controller: walueController,
                ),
                TextField(
                  decoration: const InputDecoration(
                    hintText: 'Relation to the dollar',
                  ),
                  keyboardType: TextInputType.number,
                  controller: relationToDollarController,
                ),
                TypePicker(typeController: typeController),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: const Text(
                'CANCEL',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'OK',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                if (wastedAmountController.text.isEmpty ||
                    walueController.text.isEmpty ||
                    relationToDollarController.text.isEmpty) {
                  NotificationService.showSnackBar(
                    context,
                    'Not all fields are filled in',
                    true,
                  );
                } else {
                  bloc.add(
                    AddMoneyEvent(
                      money: Money(
                        double.parse(wastedAmountController.text),
                        descriptionController.text,
                        typeController.text,
                        walueController.text,
                        double.parse(relationToDollarController.text),
                        wastedDate,
                      ),
                    ),
                  );
                }

                wastedAmountController.clear();
                descriptionController.clear();
                walueController.clear();
                relationToDollarController.clear();
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}
