import 'package:flutter/material.dart';

class FocusWidget extends StatelessWidget {
  const FocusWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => _focusCheck(context),
        child: ColoredBox(
          color: Colors.transparent,
          child: SafeArea(
            child: child,
          ),
        ),
      );

  void _focusCheck(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
