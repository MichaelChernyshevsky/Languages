import 'package:flutter/material.dart';
import 'package:project/ui/widgets/elements/account_text.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Account')),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Some about our app',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const AccountText(
              text:
                  'The application is needed to monitor your finances in order to improve your financial situation',
            ),
            const AccountText(
              text: 'You can:',
            ),
            const AccountText(
              text: '- add',
            ),
            const AccountText(
              text: '- view history',
            ),
            const AccountText(
              text: '- do conversion',
            ),
            const AccountText(
              text: '- find out how much is spent',
            ),
          ],
        ),
      ),
    );
  }
}
