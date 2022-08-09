import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZTextDate extends StatelessWidget {
  const ZTextDate({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.urbanist(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: Color(0xFF128833),
        ),
      ),
    );
  }
}
