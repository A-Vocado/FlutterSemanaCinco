import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_h2.dart';
import 'package:flutter/material.dart';

class ZAppBar extends PreferredSize {
  ZAppBar({Key? key, required this.titleText, this.actions})
      : super(key: key, preferredSize: const Size(500, 60), child: Container());

  final String titleText;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: ZTextH2(text: titleText),
      actions: actions,
      backgroundColor: Colors.grey[50],
      elevation: 0,
    );
  }
}
