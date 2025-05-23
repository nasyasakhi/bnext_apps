import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class MarkdownLoader {
  static Future<String> load(BuildContext context, String filename) async {
    final locale = Localizations.localeOf(context).languageCode;
    final path = 'assets/markdown/$locale/$filename';

    try {
      return await rootBundle.loadString(path);
    } catch (e) {
      debugPrint("MarkdownLoader error: $e");
      return '[Content not available]';
    }
  }
}
