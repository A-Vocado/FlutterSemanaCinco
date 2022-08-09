import 'package:exercicio_semana_5/src/design_system/molecules/z_appbar.dart';
import 'package:exercicio_semana_5/src/game_widget.dart';
import 'package:exercicio_semana_5/src/state_management/home_event.dart';
import 'package:exercicio_semana_5/src/state_management/home_notifier.dart';
import 'package:exercicio_semana_5/src/state_management/home_state.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeNotifier _homeNotifier = HomeNotifier();

  @override
  void initState() {
    _homeNotifier.listenEvents();
    _homeNotifier.eventNotifier.changeEvent(HomeEventSearch());
    super.initState();
  }

  @override
  void dispose() {
    _homeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZAppBar(titleText: 'Home Page'),
      body: AnimatedBuilder(
        animation: _homeNotifier.stateNotifier,
        builder: (BuildContext context, Widget? child) {
          if (_homeNotifier.stateNotifier.state is HomeStateSuccess) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: _homeNotifier.listGames.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GameWidget(
                              game: _homeNotifier.listGames[index]);
                        }),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child:
                          Text("Atualize a página para atualizar os placares."),
                    ))
                  ],
                ),
              ),
            );
          }

          return Center(
              child: CircularProgressIndicator(color: Color(0xFF1E232C)));
        },
      ),
    );
  }
}
