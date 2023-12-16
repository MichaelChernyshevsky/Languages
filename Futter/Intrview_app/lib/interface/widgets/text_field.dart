import 'package:app_with_apps/constants/exports/exports.dart';

TextField reusableTextField(
  String text,
  IconData icon,
  bool isPasswordType,
  TextEditingController controller,
  var keyboardType,
  var fillColor,
) {
  final _keyboardType = keyboardType != null
      ? keyboardType
      : isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress;
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.black,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: fillColor ?? Colors.grey,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 0, style: BorderStyle.none),
      ),
    ),
    keyboardType: _keyboardType,
  );
}
