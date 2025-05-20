import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: 'Dengan mengeklik ',
            style: context.labelSmall?.normal,
          ),
          TextSpan(
            text: 'Daftar ',
            style: context.labelSmall?.bold.toColor(AppColors.primaryMain),
          ),
          TextSpan(
            text: 'atau ',
            style: context.labelSmall?.normal,
          ),
          TextSpan(
            text: 'Masuk, ',
            style: context.labelSmall?.bold.toColor(AppColors.primaryMain),
          ),
          TextSpan(
            text: 'Anda menyetujui ',
            style: context.labelSmall?.normal,
          ),
          TextSpan(
            text: 'Persyaratan Layanan ',
            style: context.labelSmall?.bold.toColor(AppColors.primaryMain),
          ),
          TextSpan(
            text: 'kami. Pelajari cara kami memproses data Anda dalam ',
            style: context.labelSmall?.normal,
          ),
          TextSpan(
            text: 'Kebijakan Privasi ',
            style: context.labelSmall?.bold.toColor(AppColors.primaryMain),
          ),
          TextSpan(
            text: 'kami.',
            style: context.labelSmall?.normal,
          ),
        ],
      ),
    );
  }
}
