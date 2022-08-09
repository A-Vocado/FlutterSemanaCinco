import 'package:exercicio_semana_5/src/design_system/molecules/z_card.dart';
import 'package:exercicio_semana_5/src/game_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({Key? key, required this.game}) : super(key: key);

  final GameInfoModel game;

  @override
  State<GameWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10),
              Expanded(
                flex: 3,
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Partida: ${widget.game.match ?? ""}',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Resultado : ${widget.game.score ?? ""}',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
