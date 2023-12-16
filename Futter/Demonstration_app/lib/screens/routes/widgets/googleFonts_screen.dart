import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsScreen extends StatelessWidget {
  const GoogleFontsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'This is Google Fonts',
          style: GoogleFonts.acme(),
        ),
      ),
    );
  }
}
