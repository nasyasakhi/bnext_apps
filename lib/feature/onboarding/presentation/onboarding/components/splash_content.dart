import 'package:flutter/material.dart';
import 'package:bnext/core/core.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key, required this.image, required this.title, required this.text});

  final String image, title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p20),
      child: Column(
        children:[
          SizedBox(height: MediaQuery.of(context).size.height * 0.12),
          Image.asset(
            image,
            width: 150
          ),
          SizedBox(height: Sizes.p10),
          Text(
            title,
            style: context.titleMedium,
          ),
          Text(
            text,
            style: context.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}