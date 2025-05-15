import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/presentation/constants/constants.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.text,
    this.icon,
    this.onTap,
    required this.isSelected,
    this.labelColor,
  });

  final String text;
  final Widget? icon;
  final void Function()? onTap;
  final bool isSelected;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: text,
      verticalOffset: Sizes.p36,
      child: SizedBox(
        height: 58,
        child: Material(
          color: Colors.transparent,
          child: InkResponse(
            onTap: onTap,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 24,
                  width: 24,
                  child: icon,
                ),
                const Gap(Sizes.p12),
                Text(
                  text,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
