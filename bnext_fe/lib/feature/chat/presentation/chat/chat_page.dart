import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  void initState() {
    super.initState();
    redirectToWhatsApp(context); // langsung panggil redirect logic
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0722),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/whatsapp_logo.png',
              width: 120,
              height: 120,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 12),
            const Text(
              'Mengarahkan ke Whatsapp....',
              style: TextStyle(
                color: naturalColorTwo,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
