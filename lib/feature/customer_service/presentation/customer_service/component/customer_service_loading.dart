import 'package:flutter/material.dart';

class CustomerServiceLoading extends StatelessWidget {
  const CustomerServiceLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(
          color: Colors.white,
        ),
        SizedBox(height: 12),
        Text(
          'Mengarahkan ke Whatsapp...',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14
            ),
        ),
      ],
    );
  }
}