import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_14px.dart';
import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_16px.dart';
import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ZCard extends StatelessWidget {
  const ZCard({
    Key? key,
    required this.teamName1,
    required this.teamName2,
    required this.score1,
    required this.score2,
  }) : super(key: key);

  final String teamName1;
  final String teamName2;
  final String score1;
  final String score2;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 238, 236, 236),
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ZText14(text: 'Perna de Pau League 2022'),
                ZTextDate(text: '10:00 - 11:30'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                ZText16(text: '$teamName1 x $teamName2'),
                ZText16(text: '$score1 x $score2'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
