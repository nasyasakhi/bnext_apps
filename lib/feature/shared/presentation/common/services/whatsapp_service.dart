import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class WhatsappService {
  Future<void> redirectToWhatsApp();
}

class WhatsappServiceImpl implements WhatsappService {
  final BuildContext context;
  WhatsappServiceImpl(this.context);

  @override
  Future<void> redirectToWhatsApp() async {
    await Future.delayed(const Duration(seconds: 2));

    const phoneNumber = '6281295928896'; // Ganti dengan nomor kamu
    final url = Uri.parse('https://wa.me/$phoneNumber');

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Gagal membuka WhatsApp')),
      );
    }
  }
}
