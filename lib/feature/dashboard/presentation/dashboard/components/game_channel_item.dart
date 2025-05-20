import 'package:flutter/material.dart';

class GameChannelItem extends StatelessWidget {
  final String asset;
  final VoidCallback? onTap;
  final String title;

  const GameChannelItem({
    super.key,
    required this.asset,
    this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 100,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            // GAMBAR
            Positioned.fill(
              child: Image.asset(
                asset,
                fit: BoxFit.cover,
              ),
            ),
            // TITLE
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                color: Colors.black.withOpacity(0.5),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}