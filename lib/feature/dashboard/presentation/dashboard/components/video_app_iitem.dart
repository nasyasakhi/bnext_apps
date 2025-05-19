import 'package:flutter/material.dart';

class VideoAppItem extends StatelessWidget {
  final String asset;
  final VoidCallback? onTap;

  const VideoAppItem({
    super.key,
    required this.asset,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 68,
        height: 68,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(asset),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
