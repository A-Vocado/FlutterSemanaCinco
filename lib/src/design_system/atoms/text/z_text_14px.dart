import 'package:flutter/material.dart';

class ZText14 extends StatelessWidget {
  const ZText14({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: 'Urbanist',
        fontSize: 14,
        color: Colors.black,
      ),
    );
  }
}
