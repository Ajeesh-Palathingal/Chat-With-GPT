// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatResp _$ChatRespFromJson(Map<String, dynamic> json) => ChatResp(
      message: json['text'] as String?,
      chatIndex: json['index'] as int?,
    );

Map<String, dynamic> _$ChatRespToJson(ChatResp instance) => <String, dynamic>{
      'text': instance.message,
      'index': instance.chatIndex,
    };
