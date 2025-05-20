import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';
import '../../libraries.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    this.text,
    this.child,
    this.height,
    this.padding = EdgeInsets.zero,
    this.isLoading = false,
    this.onPressed,
    this.foregroundColor = AppColors.white,
    this.backgroundColor = AppColors.buttonPrimarylight,
    this.borderColor = AppColors.neutral80,
    this.borderWidth = 2,
    this.isSafeArea = true,
    this.width,
  });

  final String? text;
  final Widget? child;
  final double? height;
  final EdgeInsetsGeometry padding;
  final bool isLoading;
  final VoidCallback? onPressed;
  final Color foregroundColor;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final bool isSafeArea;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      top: isSafeArea,
      bottom: isSafeArea,
      child: SizedBox(
        height: height ?? 50,
        width: width,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.p40),
            ),
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
            side: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          onPressed: isLoading ? null : onPressed,
          child: Padding(
            padding: padding,
            child: isLoading
                ? SizedBox(
                    height: Sizes.p20,
                    width: Sizes.p20,
                    child: AdaptiveLoadingIndicator(
                      color: foregroundColor.withAlpha(125),
                    ),
                  )
                : child != null
                    ? child!
                    : Text(
                        text ?? '',
                        textAlign: TextAlign.center,
                        style: context.titleSmall?.semiBold
                            .toColor(foregroundColor),
                      ),
          ),
        ),
      ),
    );
  }
}
