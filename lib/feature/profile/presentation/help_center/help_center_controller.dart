import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class HelpCenterController {
  static final String _apiKey = dotenv.env['GEMINI_API_KEY'] ?? '';
  static final String _geminiUrl =
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=$_apiKey';

  Future<String> getBotResponse(String userMessage) async {
    try {
      final response = await http.post(
        Uri.parse(_geminiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "contents": [
            {
              "parts": [
                {"text": userMessage}
              ]
            }
          ]
        }),
      );

      final decoded = jsonDecode(response.body);
      final text = decoded['candidates']?[0]['content']?['parts']?[0]['text'];
      return text ?? "Maaf, aku tidak mengerti. Bisa diulang?";
    } catch (e) {
      return "Terjadi kesalahan: $e";
    }
  }
}
