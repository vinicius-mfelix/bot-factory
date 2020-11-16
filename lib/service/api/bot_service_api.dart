import 'package:bots/model/bot_model.dart';
import 'package:bots/service/api/service_config.dart';
import 'package:dio/dio.dart';

class BotService {

  static final String endpoint 
    = "https://5fb02caa7edddb00164682b4.mockapi.io/";

  final String _resource = "bots";

  final ServiceConfig _serviceConfig = new ServiceConfig(endpoint);

  List<BotModel> botList = new List<BotModel>();

  Future<List<BotModel>> findAll() async {
    try {
      Response response = await _serviceConfig.create().get(_resource);
      if(response.statusCode == 200) {
        response.data.forEach(
          (value) {
            botList.add(
              BotModel.fromMap(value),
            );
          }
        );
      }

    } catch(err) {
      print("Service Error: $err");
    }

    return botList;
  }
}