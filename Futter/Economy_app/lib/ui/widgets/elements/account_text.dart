import 'package:flutter/material.dart';

class AccountText extends StatelessWidget {
  const AccountText({
    super.key,
    // ignore: always_put_required_named_parameters_first
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15,
        color: Colors.white,
      ),
    );
  }
}