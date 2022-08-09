import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_14px.dart';
import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_16px.dart';
import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_date.dart';
import 'package:flutter/material.dart';

class ZCard extends StatelessWidget {
  const ZCard(
      {Key? key, required this.match, required this.score, required this.time})
      : super(key: key);

  final String match;
  final String score;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 238, 236, 236),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ZText14(text: 'Campeonato Perna de Pau '),
                ZTextDate(text: time),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 21),
                ZText16(text: match),
                ZText16(text: score),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
