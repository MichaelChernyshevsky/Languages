import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/bloc/task_bloc.dart';
import 'package:flutter_application_2/model/task.dart';
import 'package:flutter_application_2/screens/widget/notification_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:go_router/go_router.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  int countDays = 1;
  int countOnTime = 1;
  bool infinityCount = false;
  bool picker = false;
  String? selectedTime = '00:00';

  final TextEditingController nameController = TextEditingController();
  final List<IconData> icons = const [
    MaterialSymbols.spa,
    MaterialSymbols.dentistry,
    MaterialSymbols.health_and_safety,
    MaterialSymbols.emergency,
    MaterialSymbols.cleaning_services,
    MaterialSymbols.local_laundry_service,
    MaterialSymbols.menu_book,
    MaterialSymbols.computer,
    MaterialSymbols.fitness_center,
    MaterialSymbols.directions_walk,
    MaterialSymbols.sports_esports,
    MaterialSymbols.flight,
    MaterialSymbols.hiking,
    MaterialSymbols.star,
    MaterialSymbols.sunny,
    MaterialSymbols.tv,
    MaterialSymbols.local_bar,
    MaterialSymbols.wine_bar,
    MaterialSymbols.weekend,
    MaterialSymbols.local_gas_station,
    MaterialSymbols.pets,
  ];

  late Color selectedColor = Colors.red;
  late Icon selectedIcon = Icon(icons[0]);
  TimeOfDay? time = const TimeOfDay(hour: 0, minute: 0);
  Color? _tempMainColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff94C721),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              preliminary(),
              SingleChildScrollView(
                  child: Column(
                children: [
                  getName(),
                  getColor(),
                  getDays(),
                  getCounts(),
                  getIcon(),
                  getTime(),
                  buttons(context),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  Padding buttons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
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
                if (nameController.text.isEmpty) {
                  NotificationService.showSnackBar(
                    context,
                    'Not name',
                    true,
                  );
                } else {
                  BlocProvider.of<TaskBloc>(context).add(
                    AddTaskEvent(
                      Task(
                        countOnTime: countOnTime,
                        infinityCount: infinityCount,
                        name: nameController.text,
                        time: selectedTime!,
                        icon: selectedIcon,
                        iconColor: selectedColor,
                        countDays: countDays,
                      ),
                    ),
                  );
                  GoRouter.of(context).pop();
                }
              })
        ],
      ),
    );
  }

  Padding preliminary() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(width: 3.0),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            color: Colors.white),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  IconTheme(
                      data: IconThemeData(size: 30, color: selectedColor),
                      child: selectedIcon),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      nameController.text,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Count on day: $countOnTime"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(infinityCount == false
                        ? "Still: $countDays"
                        : "Infinity"),
                  )
                ],
              ),
            )),
      ),
    );
  }

  Padding getCounts() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(width: 3.0),
          borderRadius: const BorderRadius.all(Radius.circular(10.0) //
              ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text("Count times",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                const Text(
                  "Set count on day",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          if (countOnTime > 1) {
                            setState(() {
                              countOnTime -= 1;
                            });
                          }
                        },
                        child: const Icon(MaterialSymbols.remove,
                            color: Colors.red)),
                    Text(
                      "$countOnTime",
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w100,
                          color: Colors.amber),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            countOnTime += 1;
                          });
                        },
                        child: const Icon(MaterialSymbols.add,
                            color: Colors.green)),
                  ],
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Padding getDays() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(width: 3.0),
          borderRadius: const BorderRadius.all(Radius.circular(10.0) //
              ),
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  "Count days",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Repeat or no",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                    ),
                    CupertinoSwitch(
                      value: picker,
                      activeColor: CupertinoColors.activeBlue,
                      onChanged: (_) {
                        setState(() {
                          picker = _;
                        });
                      },
                    ),
                  ],
                ),
                picker == false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              if (countDays > 1) {
                                setState(() {
                                  countDays -= 1;
                                });
                              }
                            },
                            child: const Icon(
                              MaterialSymbols.remove,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            "$countDays",
                            style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w100,
                                color: Colors.amber),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                countDays += 1;
                              });
                            },
                            child: const Icon(MaterialSymbols.add,
                                color: Colors.green),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Infinity:  $infinityCount"),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  infinityCount = !infinityCount;
                                });
                              },
                              child: const Icon(MaterialSymbols.change_circle)),
                        ],
                      ),
              ],
            )),
      ),
    );
  }

  Padding getName() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(width: 3.0),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Name',
              border: InputBorder.none,
            ),
            controller: nameController,
          ),
        ),
      ),
    );
  }

  Padding getColor() {
    void _colorDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(6.0),
            content: MaterialColorPicker(
              selectedColor: selectedColor,
              allowShades: false,
              onMainColorChange: (color) =>
                  setState(() => _tempMainColor = color),
            ),
            actions: [
              TextButton(
                onPressed: Navigator.of(context).pop,
                child: const Text('CANCEL'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() => selectedColor = _tempMainColor!);
                },
                child: const Text('SUBMIT'),
              ),
            ],
          );
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(width: 3.0),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                "Icon color",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    " Icon Color",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                  ),
                  IconButton(
                    onPressed: () => _colorDialog(),
                    icon: Icon(
                      Icons.circle,
                      color: selectedColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding getIcon() {
    void _iconDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(6.0),
            content: Container(
              width: 320,
              height: 400,
              alignment: Alignment.center,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 60,
                      childAspectRatio: 1 / 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: icons.length,
                  itemBuilder: (_, index) => Container(
                        key: ValueKey(icons[index].codePoint),
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: IconButton(
                            color: selectedIcon == icons[index]
                                ? Colors.blue
                                : Colors.green,
                            iconSize: 30,
                            icon: Icon(
                              icons[index],
                            ),
                            onPressed: () {
                              setState(() {
                                selectedIcon = Icon(icons[index]);
                              });
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      )),
            ),
            actions: [
              TextButton(
                onPressed: Navigator.of(context).pop,
                child: const Text('SUBMIT'),
              ),
            ],
          );
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(width: 3.0),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                "Icon",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    " Icon Color",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                  ),
                  IconButton(
                      onPressed: () => _iconDialog(), icon: selectedIcon),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding getTime() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(width: 3.0),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                "Time",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " Time: ${time!.hour.toString()}:${time!.minute.toString()}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w200),
                  ),
                  IconButton(
                      onPressed: () async {
                        TimeOfDay? newTime = await showTimePicker(
                          context: context,
                          initialTime: time!,
                        );
                        if (newTime != null) {
                          setState(() {
                            time = newTime;
                            selectedTime =
                                "${newTime.hour.toString()}:${newTime.minute.toString()}";
                          });
                        }
                      },
                      icon: const Icon(MaterialSymbols.schedule))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
