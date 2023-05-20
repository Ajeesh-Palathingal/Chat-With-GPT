import 'package:json_annotation/json_annotation.dart';

part 'models_resp.g.dart';

@JsonSerializable()
class ModelsResp {
  String? id;

  int? created;

  String? root;

  ModelsResp({
    this.id,
    this.created,
    this.root,
  });

  factory ModelsResp.fromJson(Map<String, dynamic> json) {
    return _$ModelsRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ModelsRespToJson(this);
  static List<ModelsResp> modelsList(List modelsList) {
    return modelsList.map((data) => ModelsResp.fromJson(data)).toList();
  }
}



