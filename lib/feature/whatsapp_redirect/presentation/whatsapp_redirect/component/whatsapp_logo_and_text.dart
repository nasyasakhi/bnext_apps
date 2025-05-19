import 'package:flutter/material.dart';

class WhatsappLogoAndText extends StatelessWidget {
  const WhatsappLogoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/whatsapp_logo.png',
          width: 120,
          height: 120,
        ),
        const SizedBox(height: 12),
        const Text(
          'Mengarahkan ke WhatsApp....',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white, // Ganti sesuai style kamu
          ),
        ),
      ],
    );
  }
}
