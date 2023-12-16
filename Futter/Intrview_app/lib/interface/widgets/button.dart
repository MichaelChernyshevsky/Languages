import 'package:app_with_apps/constants/exports/exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonColor,
    required this.text,
  });

  final MaterialColor buttonColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        color: buttonColor,
        height: 50,
        width: 100,
        alignment: Alignment.center,
        child: Text(text),
      ),
    );
  }
}
