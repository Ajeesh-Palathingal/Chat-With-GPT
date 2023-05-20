import 'dart:convert';
import 'dart:developer';

import 'package:chat_with_gpt/domain/model/models_resp/models_resp.dart';
import 'package:http/http.dart' as http;

import '../core/api_constants.dart';

class ApiService {
  static Future<List<ModelsResp>> getModels() async {
    try {
      var response = await http.get(
        Uri.parse("$baseUrl/models"),
        headers: {"Authorization": "Bearer $apiKey"},
      );
      print("Status : ${response.statusCode}");
      // if (response.statusCode != 200 || response.statusCode != 201) {
      //   return null;
      // } else {
        Map jsonResponse = jsonDecode(response.body);
        // log(jsonResponse.toString());

        List temp = [];
        for (var value in jsonResponse["data"]) {
          temp.add(value);
          
        }

        return ModelsResp.modelsList(temp);
      // }
    } catch (e) {
      print(e);

      rethrow;
    }
  }
}
