import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class InputEmailReg extends StatelessWidget {
  const InputEmailReg({
    required this.email,
    super.key,
  });

  final TextEditingController email;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      controller: email,
      validator: (email) => email != null && !EmailValidator.validate(email) ? 'Введите правильный Email' : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        hintText: 'Введите Email',
      ),
    );
  }
}

class InputPasswordReg extends StatelessWidget {
  const InputPasswordReg({
    required this.passwordCheck,
    required this.tab,
    required this.isHiddenPassword,
    required this.hintText,
    super.key,
  });

  final TextEditingController passwordCheck;
  final VoidCallback tab;
  final bool isHiddenPassword;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      controller: passwordCheck,
      obscureText: isHiddenPassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => value != null && value.length < 6 ? 'Минимум 6 символов' : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        hintText: hintText,
        suffix: InkWell(
          onTap: tab,
          child: Icon(
            isHiddenPassword ? Icons.visibility_off : Icons.visibility,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
