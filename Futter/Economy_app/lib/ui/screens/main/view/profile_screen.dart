import 'package:flutter/material.dart';
import 'package:project/models/app_routes.dart';
import 'package:project/provider/user.provider.dart';
import 'package:project/ui/widgets/elements/card_element.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardElement(
                  text: 'Account',
                  icon: const Icon(
                    Icons.person,
                  ),
                  color: Colors.amber,
                  tab: () {
                    Navigator.pushNamed(context, AppRoute.account);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CardElement(
                  text: 'Info',
                  icon: const Icon(Icons.info),
                  color: Colors.amber,
                  tab: () {
                    Navigator.pushNamed(context, AppRoute.info);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                
                CardElement(
                  text: 'EXIT',
                  icon: const Icon(Icons.logout),
                  color: Colors.red,
                  tab: () async {
                    await Provider.of<UserProvider>(context, listen: false).signOut();
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
