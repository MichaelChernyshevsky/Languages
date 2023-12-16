import 'package:flutter/material.dart';
import 'package:project/provider/user.provider.dart';
import 'package:project/ui/widgets/elements/card_element_without_icon.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  late final String? email;
  late final double totalWaste;

  @override
  void initState() {
    super.initState();
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    email = userProvider.userMail;
    totalWaste = userProvider.totalWaste;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Account')),
      body: Column(
        children: [
          CardElementWithoutIcon(
            text: 'Email: $email',
            color: Colors.grey,
          ),
          CardElementWithoutIcon(
            text: 'You waste $totalWaste ',
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
