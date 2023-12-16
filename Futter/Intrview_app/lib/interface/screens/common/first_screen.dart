// ignore_for_file: deprecated_member_use, prefer_typing_uninitialized_variables

import 'package:app_with_apps/constants/localization/text.dart';
import 'package:app_with_apps/func/date_picker.dart';
import 'package:app_with_apps/func/get_image.dart';
import 'package:app_with_apps/func/validators.dart';
import 'package:app_with_apps/interface/widgets/button.dart';
import 'package:app_with_apps/interface/widgets/text_field.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _phoneTextController = TextEditingController();
  final TextEditingController dateInput = TextEditingController();

  Color bgColor = Colors.white;

  var _buttonColor = Colors.amber;
  var _colorEmail;
  var _colorPassword;
  var _colorPhone;
  var _colorImage = Colors.amber;
  var _colorDate = Colors.amber;

  String passwordText = ConstantText.password;
  String phoneText = ConstantText.phone;
  String emailText = ConstantText.email;

  bool checkData() {
    setState(() {
      if (!emailValidator(_emailTextController.text)) {
        _colorEmail = Colors.red;
      }
      final passwordCheck = validatePassword(_passwordTextController.text);
      if (passwordCheck != 'ok') {
        _colorPassword = Colors.red;
        passwordText = passwordCheck;
      }
      final phoneCheck = validateMobile(_phoneTextController.text);
      if (phoneCheck != 'ok') {
        _colorPhone = Colors.red;
        phoneText = phoneCheck;
      }
    });
    if (_colorEmail == Colors.red ||
        _colorPassword == Colors.red ||
        _colorPhone == Colors.red ||
        _colorImage == Colors.red) {
      bgColor = Colors.redAccent;
      return false;
    } else {
      bgColor = Colors.green;
      return true;
    }
  }

  void getImage() async {
    final image = await getImageFromGallery();
    setState(() {
      if (image == '') {
        _colorImage = Colors.red;
      }
      _colorImage = Colors.green;
    });
  }

  void showDatePicker() async {
    final bool date = await datePicker(context);
    setState(() {
      if (!date) {
        _colorDate = Colors.red;
      }
      _colorDate = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(title: Text(ConstantText.secondScreen)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: reusableTextField(emailText, Icons.person_outline, false,
                    _emailTextController, null, _colorEmail),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: reusableTextField(
                  passwordText,
                  Icons.lock_outline,
                  true,
                  _passwordTextController,
                  null,
                  _colorPassword,
                ),
              ),
              GestureDetector(
                onTap: () => showDatePicker(),
                child: CustomButton(
                  buttonColor: _colorDate,
                  text: ConstantText.chouseDate,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: reusableTextField(
                  phoneText,
                  Icons.phone,
                  false,
                  _phoneTextController,
                  TextInputType.phone,
                  _colorPhone,
                ),
              ),
              GestureDetector(
                onTap: () => getImage(),
                child: CustomButton(
                  buttonColor: _colorImage,
                  text: ConstantText.getImage,
                ),
              ),
              GestureDetector(
                onTap: () => checkData(),
                child: CustomButton(
                  buttonColor: _buttonColor,
                  text: ConstantText.checkData,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
