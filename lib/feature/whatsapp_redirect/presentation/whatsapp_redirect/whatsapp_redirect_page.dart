import 'package:bnext/feature/shared/presentation/common/services/whatsapp_service.dart';
import 'package:bnext/feature/whatsapp_redirect/presentation/whatsapp_redirect/component/whatsapp_logo_and_text.dart';
import 'package:flutter/material.dart';

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
