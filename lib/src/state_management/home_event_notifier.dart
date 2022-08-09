import 'package:exercicio_semana_5/src/state_management/home_event.dart';
import 'package:flutter/foundation.dart';

class HomeEventNotifier extends ChangeNotifier {
  HomeEventNotifier._();

  static final HomeEventNotifier _instance = HomeEventNotifier._();

  static HomeEventNotifier get instance => _instance;

  HomeEvent? event;

  void changeEvent(HomeEvent newEvent) {
    event = newEvent;
    notifyListeners();
  }
}
