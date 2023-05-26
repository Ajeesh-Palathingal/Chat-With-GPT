import 'package:json_annotation/json_annotation.dart';

part 'chat_resp.g.dart';

@JsonSerializable()
class ChatResp {
  @JsonKey(name: "text") @JsonKey(name: "content")
  String? message;

  @JsonKey(name: "index")
  int? chatIndex;

  ChatResp({this.message, this.chatIndex});

  factory ChatResp.fromJson(Map<String, dynamic> json) {
    return _$ChatRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChatRespToJson(this);
}
