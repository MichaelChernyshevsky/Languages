import 'package:flutter/material.dart';

class LineLarge extends StatelessWidget {
  const LineLarge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black,
    );
  }
}

class LineSmall extends StatelessWidget {
  const LineSmall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 20,
      endIndent: 20,
      color: Colors.black,
    );
  }
}
