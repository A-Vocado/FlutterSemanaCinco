import 'package:exercicio_semana_5/src/game_model.dart';
import 'package:exercicio_semana_5/src/state_management/home_event.dart';
import 'package:exercicio_semana_5/src/state_management/home_event_notifier.dart';
import 'package:exercicio_semana_5/src/state_management/home_state.dart';
import 'package:exercicio_semana_5/src/state_management/home_state_notifier.dart';
import 'package:flutter/foundation.dart';

class HomeNotifier extends ChangeNotifier {
  HomeNotifier();

  List<GameInfoModel> listGames = [];

  HomeStateNotifier stateNotifier = HomeStateNotifier.instance;
  HomeEventNotifier eventNotifier = HomeEventNotifier.instance;

  void listenEvents() {
    eventNotifier.addListener(
      () {
        if (eventNotifier.event is HomeEventSearch) {
          _getGames();
        } else if (eventNotifier.event is HomeEventRefresh) {
          _getNewGames();
        }
      },
    );
  }

  void _getGames() async {
    stateNotifier.changeState(HomeStateLoading());
    await Future.delayed(Duration(seconds: 2));
    final response = [
      {
        "match": "Inter de Meião x Atletico Maneiro",
        "score": "0 x 0",
        "time": "10:30 - 12:00"
      },
      {
        "match": "Coração Cansado FC x Corintios Biblico",
        "score": "0 x 0",
        "time": "10:30 - 12:00"
      },
      {
        "match": "Atletico Maneiro x Flamingos de Regatas",
        "score": "0 x 0",
        "time": "10:30 - 12:00"
      },
      {
        "match": "Fake Madrid x Coqueiros",
        "score": "0 x 0",
        "time": "10:30 - 12:00"
      },
    ];

    for (var game in response) {
      listGames.add(GameInfoModel.fromJson(game));
    }
    stateNotifier.changeState(HomeStateSuccess());
  }

  void _getNewGames() async {
    listGames.clear();
    stateNotifier.changeState(HomeStateLoading());
    await Future.delayed(Duration(milliseconds: 50));
    final response = [
      {
        "match": "Inter de Meião x Atletico Maneiro",
        "score": "1 x 2",
        "time": "10:30 - 12:00"
      },
      {
        "match": "Coração Cansado FC x Corintios Biblico",
        "score": "3 x 3",
        "time": "10:30 - 12:00"
      },
      {
        "match": "Atletico Maneiro x Flamingos de Regatas",
        "score": "0 x 1",
        "time": "10:30 - 12:00"
      },
      {
        "match": "Fake Madrid x Coqueiros",
        "score": "3 x 2",
        "time": "10:30 - 12:00"
      },
    ];

    for (var game in response) {
      listGames.add(GameInfoModel.fromJson(game));
    }
    stateNotifier.changeState(HomeStateSuccess());
  }
}
