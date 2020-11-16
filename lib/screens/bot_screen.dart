import 'package:bots/mobx/bot_store_screen.dart';
import 'package:bots/model/bot_model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';

class BotScreen extends StatefulWidget {
  @override
  _BotScreenState createState() => _BotScreenState();
}

class _BotScreenState extends State<BotScreen> {

  final BotScreenStore _store = new BotScreenStore();

   
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Observer(
          builder: (context) {
            return list(_store.botList);
          },
        ),
      ),
    );  
  }
}

Widget list(List<BotModel> bots) {
  return ListView.builder(
    itemCount: bots == null ? 0 : bots.length,
    itemBuilder: (BuildContext context, int index) {
      return Text(bots[index].nome);
    },
  );
}