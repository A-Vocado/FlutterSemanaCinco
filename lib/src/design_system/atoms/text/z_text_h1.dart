import 'package:flutter/material.dart';

class ZTextH1 extends StatelessWidget {
  const ZTextH1({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: 'Urbanist',
        fontSize: 30,
        color: Color(0xFF1E232C),
      ),
    );
  }
}
