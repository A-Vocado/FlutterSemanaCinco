import 'package:flutter/material.dart';

class ZText16 extends StatelessWidget {
  const ZText16({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: 'Urbanist',
        fontSize: 16,
        color: Color(0x001E232C),
      ),
    );
  }
}
