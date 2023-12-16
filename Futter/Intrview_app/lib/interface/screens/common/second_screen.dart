import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/templates/constants.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:app_with_apps/constants/localization/text.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String> buttons = Constants.buttons;

  String userInput = '';
  String answer = '0';

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ConstantText.secondScreen)),
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userInput,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.centerRight,
                    child: Text(
                      answer,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: buttons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        userInput = '';
                        answer = '0';
                      });
                    },
                    child: Text(buttons[index]),
                  );
                } else if (index == 1) {
                  return ElevatedButton(
                    onPressed: () {},
                    child: Text(buttons[index]),
                  );
                } else if (index == 2) {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        userInput += buttons[index];
                      });
                    },
                    child: Text(buttons[index]),
                  );
                } else if (index == 3) {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        userInput =
                            userInput.substring(0, userInput.length - 1);
                      });
                    },
                    child: Text(buttons[index]),
                  );
                } else if (index == 18) {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        equalPressed();
                      });
                    },
                    child: Text(buttons[index]),
                  );
                } else {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        userInput += buttons[index];
                      });
                    },
                    child: Text(buttons[index]),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
