import 'package:bnext/feature/shared/presentation/common/services/gemini_services.dart';
import 'package:flutter/material.dart';

class HelpCenterController extends ChangeNotifier {
  final TextEditingController messageController = TextEditingController();
  final ScrollController scrollController = ScrollController(); // NEW
  final GeminiServices _geminiServices = GeminiServices();

  List<Map<String, String>> messages = [
    {
      'from': 'bot',
      'text': 'Selamat datang di Pusat Bantuan. Ada yang bisa dibantu?'
    },
  ];

  bool isTyping = false;

  Future<void> sendMessage() async {
    final text = messageController.text.trim();
    if (text.isEmpty) return;

    messages.add({'from': 'user', 'text': text});
    messageController.clear();
    isTyping = true;
    notifyListeners();
    _scrollToBottom();

    try {
      final response = await _geminiServices.sendMessage(text);
      messages.add({'from': 'bot', 'text': response});
    } catch (e) {
      messages.add({
        'from': 'bot',
        'text': 'Maaf terjadi kesalahan. Coba lagi nanti yaa~'
      });
    }

    isTyping = false;
    notifyListeners();
    _scrollToBottom();
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    messageController.dispose();
    scrollController.dispose(); // NEW
    super.dispose();
  }
}