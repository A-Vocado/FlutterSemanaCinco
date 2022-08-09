import 'package:exercicio_semana_5/src/state_management/home_state.dart';
import 'package:flutter/material.dart';

class HomeStateNotifier extends ChangeNotifier {
  HomeStateNotifier._();

  static final HomeStateNotifier _instance = HomeStateNotifier._();

  static HomeStateNotifier get instance => _instance;

  HomeState? state;

  void changeState(HomeState newState) {
    state = newState;
    notifyListeners();
  }
}
