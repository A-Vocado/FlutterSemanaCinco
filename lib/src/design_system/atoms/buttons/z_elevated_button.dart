import 'package:flutter/material.dart';

class ZElevatedButton extends StatelessWidget {
  const ZElevatedButton({
    Key? key,
    this.child,
    required this.onPressed,
  }) : super(key: key);

  final Widget? child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(),
          primary: Color(0xFF1E232C),
          fixedSize: const Size(348, 56),
        ),
        child: child,
      ),
    );
  }
}
