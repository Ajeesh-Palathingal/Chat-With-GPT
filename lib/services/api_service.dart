import 'dart:convert';
import 'dart:developer';
import 'package:chat_with_gpt/domain/model/chat_resp/chat_resp.dart';
import 'package:chat_with_gpt/domain/model/models_resp/models_resp.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show utf8;

import '../core/api_constants.dart';
import '../core/api_key.dart';

class ApiService {
  // models fetching
  static Future<List<ModelsResp>> getModels() async {
    try {
      var response = await http.get(
        Uri.parse("$baseUrl/models"),
        headers: {"Authorization": "Bearer $apiKey"},
      );
      // print("Status : ${response.statusCode}");

      Map jsonResponse = jsonDecode(response.body);
      // log(jsonResponse.toString());

      List temp = [];
      for (var value in jsonResponse["data"]) {
        temp.add(value);
      }
      // print('temp list $temp');

      return ModelsResp.modelsList(temp);
      // }
    } catch (e) {
      print(e);

      rethrow;
    }
  }

  // send message
  static Future<List<ChatResp>> getReplyMessageSet1(
      {required String message, required String model}) async {
    try {
      var response = await http.post(Uri.parse("$baseUrl/chat/completions"),
          headers: {
            "Authorization": "Bearer $apiKey",
            "Content-Type": "application/json",
          },
          body: jsonEncode({
            "model": model,
            "messages": [
              {
                "role": "user",
                "content": message,
              }
            ],
          }));
      // print("Status : ${response.statusCode}");
      // print("The question is :$message");
      Map jsonResponse = jsonDecode(response.body);

      List<ChatResp> chatList = [];
      if (jsonResponse["choices"].length > 0) {
        // final answer = ;
        final reply = jsonResponse["choices"][0]["message"]["content"].runes.toList();

        // log("jsonresponse[choices]text ${jsonResponse["choices"][0]["message"]}");    ---> This is in utf16 format. so characters in languages like malayalam not supported
        final replyInUTF8Format = utf8.decode(reply);

        // reply in utf16 is converted to utf8 as replyInUTF8Format
        log(replyInUTF8Format);

        chatList = List.generate(
            jsonResponse.length, (index) => ChatResp(message: replyInUTF8Format, chatIndex: 1));
      }

      return chatList;
    } catch (e) {
      print(e);

      rethrow;
    }
  }

  static Future<List<ChatResp>> getReplyMessageSet2(
      {required String message, required String model}) async {
    try {
      var response = await http.post(Uri.parse("$baseUrl/completions"),
          headers: {
            "Authorization": "Bearer $apiKey",
            "Content-Type": "application/json",
          },
          body: jsonEncode({
            "model": model,
            // adding a : for getting correct answer. otherwise sometime getting some random results
            "prompt": message + ":",

            "max_tokens": 2000,
          }));
      // print("Status : ${response.statusCode}");
      // print("The question is :$message");
      Map jsonResponse = jsonDecode(response.body);

      List<ChatResp> chatList = [];
      if (jsonResponse["choices"].length > 0) {
        final reply = jsonResponse["choices"][0]["text"].runes.toList();
        final replyInUTF8Format = utf8.decode(reply);
        log(replyInUTF8Format);
        chatList = List.generate(
            jsonResponse.length, (index) => ChatResp(message: replyInUTF8Format, chatIndex: 1));
      }

      return chatList;
    } catch (e) {
      print(e);

      rethrow;
    }
  }

  
}
