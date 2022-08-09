import 'package:exercicio_semana_5/src/design_system/molecules/z_card.dart';
import 'package:exercicio_semana_5/src/game_model.dart';
import 'package:flutter/material.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({Key? key, required this.game}) : super(key: key);

  final GameInfoModel game;

  @override
  State<GameWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {
  @override
  Widget build(BuildContext context) {
    return ZCard(
      match: '${widget.game.match}',
      score: '${widget.game.score}',
      time: '${widget.game.time}',
    );
  }
}
