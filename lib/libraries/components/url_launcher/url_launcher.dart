import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openStore(String packageName) async {
  final Uri marketUri = Uri.parse('market://details?id=$packageName');
  final Uri webUri = Uri.parse('https://play.google.com/store/apps/details?id=$packageName');

  if (!await launchUrl(marketUri, mode: LaunchMode.externalApplication)) {
    if (!await launchUrl(webUri, mode: LaunchMode.externalApplication)) {
      debugPrint('Tidak dapat membuka Play Store untuk $packageName');
    }
  }
}