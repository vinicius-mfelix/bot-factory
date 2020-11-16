
import 'package:bots/model/bot_model.dart';
import 'package:bots/service/api/bot_service_api.dart';
import 'package:mobx/mobx.dart';
part 'bot_store_screen.g.dart';

class BotScreenStore = _BotScreenStore with _$BotScreenStore;

abstract class _BotScreenStore with Store {

  final BotService _botService = new BotService();
  List<BotModel> _botList = new List<BotModel>();

  _BotScreenStore() {
    init();
  }

  init() async {
    _botList = await _botService.findAll();
    botList = _botList.asObservable();
  }

  @observable
  List<BotModel> botList = <BotModel>[].asObservable();
}