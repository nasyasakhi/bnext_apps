import 'package:auto_route/auto_route.dart';
import 'package:bnext/libraries/components/button/primary_button.dart';
import 'package:flutter/material.dart';

class PartnershipButton extends StatelessWidget {
  const PartnershipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      height: 50,
      text: 'Tukarkan Sekarang',
      onPressed: () {
        context.router.maybePop();
      },
    );
  }
}