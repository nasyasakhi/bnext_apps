import 'package:flutter/material.dart';
import 'package:bnext_fe/core/redirect_to_whatsapp.dart';
import 'package:bnext_fe/feature/chat/presentation/chat/components/chat_components.dart';

class WhatsappRedirectPage extends StatefulWidget {
  const WhatsappRedirectPage({super.key});

  @override
  State<WhatsappRedirectPage> createState() => _WhatsappRedirectPageState();
}

class _WhatsappRedirectPageState extends State<WhatsappRedirectPage> {
  @override
  void initState() {
    super.initState();
    final service = WhatsappServiceImpl(context);
    service.redirectToWhatsApp();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF0E0722), // Ganti ke warna const kamu yaa
      body: Center(
        child: WhatsappLogoAndText(),
      ),
    );
  }
}
