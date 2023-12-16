import 'package:flutter/material.dart';
import 'package:flutter_application_2/provider/task.provider.dart';
import 'package:flutter_application_2/provider/user.provider.dart';
import 'package:provider/provider.dart';

class AccounScreen extends StatefulWidget {
  const AccounScreen({super.key});

  @override
  State<AccounScreen> createState() => _AccounScreenState();
}

class _AccounScreenState extends State<AccounScreen> {
  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context, listen: false);
    final userProvider = Provider.of<User>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AccountInfo(
              text: 'Active Task ${taskProvider.activeCount}',
            ),
            AccountInfo(
              text: 'Finished Task ${taskProvider.doneTotalCount}',
            ),
            AccountInfo(
              text: 'Your email ${userProvider.userMail}',
            ),
            AccountButton(
              text: 'Exit',
              color: Colors.red,
              tab: () {
                Provider.of<User>(context, listen: false).logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AccountButton extends StatelessWidget {
  const AccountButton({
    super.key,
    required this.text,
    required this.tab,
    required this.color,
  });
  final String text;
  final VoidCallback tab;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: tab,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.8,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class AccountInfo extends StatelessWidget {
  const AccountInfo({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.8,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xbb1B3049),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xbb94C721),
          ),
        ),
      ),
    );
  }
}
