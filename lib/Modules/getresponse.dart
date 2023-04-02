import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<String> getChatResponse(String message) async {
  const String endpointUrl =
      'https://api.openai.com/v1/engines/davinci-codex/completions';
  const String apiKey = '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';

  final response = await http.post(Uri.parse(endpointUrl),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json'
      },
      body: jsonEncode({
        'prompt': message,
        'max_tokens': '150',
        'temperature': '0.5',
        'stop': '\n'
      }));

  if (response.statusCode == 200) {
    debugPrint("text sended");
    final jsonResponse = jsonDecode(response.body);
    final chatResponse = jsonResponse['choices'][0]['text'].toString();
    return chatResponse;
  } else {
    debugPrint("text not sended ");
    throw Exception('Failed to get response from ChatGPT API');
  }
}
