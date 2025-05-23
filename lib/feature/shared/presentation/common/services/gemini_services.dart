import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiServices {
  late final GenerativeModel _model;

  GeminiServices() {
    final apiKey = dotenv.env['GEMINI_API_KEY'];
    if (apiKey == null || apiKey.isEmpty) {
      throw Exception('GEMINI_API_KEY ga ditemuin di .env');
    }
    _model = GenerativeModel(
      model: 'gemini-1.5-flash', 
      apiKey: apiKey
    );
  }

  Future<String> sendMessage(String inputText) async {
    if (inputText.trim().isEmpty) {
      throw Exception('Tolong Ketik sesuatu dulu sebelum dikirim yaa!');
    }
    try {
      final response = await _model.generateContent([Content.text(inputText)]);
      return response.text ?? 'Maaf, AI tidak dapat memberikan jawaban.';
    } catch(e) {
      print('Error saat kirim pesan ke Gemini: $e');
      return "Terjadi kesalahan saat menghubungi Gemini. Coba lagi nanti yaa~";
    }
  }
}