
import 'dart:convert';

class BotModel {
  int id;
  String nome;
  List<dynamic> caracteristicas;
  String ativo;
  String vidaUtil;

  BotModel({
    this.id,
    this.nome,
    this.caracteristicas,
    this.ativo,
    this.vidaUtil
  });

  factory BotModel.fromJson(String str) => BotModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BotModel.fromMap(Map<String, dynamic> json) => BotModel(
    id: 
      (json["id"] is int) ?
        json["id"] :
        int.parse(json["id"]),
    nome: (json["nome"]),
    caracteristicas: (json["caracteristicas"]),
    ativo: (json["ativo"]),
    vidaUtil: (json["vidaUtil"]),
  );

  Map<String, dynamic> toMap() => {
    "id" : id,
    "nome": nome,
    "caracteristicas": caracteristicas,
    "ativo": ativo,
    "vidaUtil": vidaUtil,
  };
}