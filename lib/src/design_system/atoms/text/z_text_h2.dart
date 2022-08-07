import 'package:flutter/material.dart';

class ZTextH2 extends StatelessWidget {
  const ZTextH2({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: 'Urbanist',
        fontSize: 26,
        color: Color(0xFF1E232C),
      ),
    );
  }
}
