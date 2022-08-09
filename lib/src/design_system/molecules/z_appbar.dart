import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_h2.dart';
import 'package:exercicio_semana_5/src/state_management/home_event.dart';
import 'package:exercicio_semana_5/src/state_management/home_notifier.dart';
import 'package:flutter/material.dart';

class ZAppBar extends PreferredSize {
  ZAppBar({Key? key, required this.titleText, this.actions})
      : super(key: key, preferredSize: const Size(500, 50), child: Container());

  final String titleText;
  final List<Widget>? actions;

  HomeNotifier _homeNotifier = HomeNotifier();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: ZTextH2(text: titleText),
      actions: [
        InkWell(
          onTap: () {
            _homeNotifier.eventNotifier.changeEvent(HomeEventRefresh());
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.refresh, color: Color(0xFF1E232C)),
          ),
        )
      ],
      backgroundColor: Colors.grey[50],
      elevation: 0,
    );
  }
}
