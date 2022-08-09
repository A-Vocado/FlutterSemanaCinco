import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_14px.dart';
import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_16px.dart';
import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ZCard extends StatelessWidget {
  const ZCard({
    Key? key,
    required this.match,
    required this.score,
  }) : super(key: key);

  final String match;
  final String score;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 238, 236, 236),
      margin: const EdgeInsets.all(15.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ZText14(text: 'Campeonato Perna de Pau '),
                ZTextDate(text: '10:30'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 01),
                ZText14(text: match),
                ZTextDate(text: score),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
