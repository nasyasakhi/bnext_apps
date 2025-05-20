import 'dart:convert';
import 'package:http/http.dart' as http;

class HelpCenterController {
  static const String _apiKey = 'ISI_API_KEY_GEMINI_KAMU_DI_SINI';
  static const String _geminiUrl =
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
