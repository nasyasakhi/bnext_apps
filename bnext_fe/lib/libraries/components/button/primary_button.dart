import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../config/config.dart';
import '../../libraries.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    this.height = Sizes.p42,
    this.width,
    this.padding = EdgeInsets.zero,
    this.isLoading = false,
    this.isDisabled = false,
    this.onPressed,
    this.isSafeArea = true,
    this.isDisabledMessage,
    this.backgroundColor,
    this.textColor,
    this.icon,
    this.heightIcon,
  });

  final String? icon;
  final double? heightIcon;
  final String text;
  final double height;
  final double? width;
  final EdgeInsetsGeometry padding;
  final bool isLoading;
  final bool isDisabled;
  final VoidCallback? onPressed;
  final String? isDisabledMessage;
  final bool isSafeArea;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      top: isSafeArea,
      bottom: isSafeArea,
      child: SizedBox(
        height: height,
        width: width,
        child: GestureDetector(
          onTap: isDisabledMessage != null
              ? () {
                  SnackbarHelper.showError(
                    context,
                    isDisabledMessage ?? 'Terjadi kesalahan, perikasa kembali',
                  );
                }
              : null,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Sizes.p40),
              ),
              backgroundColor: backgroundColor,
            ),
            onPressed: isLoading || isDisabled ? null : onPressed,
            child: Padding(
              padding: padding,
              child: isLoading
                  ? const SizedBox(
                      height: Sizes.p20,
                      width: Sizes.p20,
                      child: AdaptiveLoadingIndicator(
                        color: AppColors.neutral10,
                      ),
                    )
                  : icon != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(icon ?? '', height: heightIcon ?? 20),
                            const Gap(Sizes.p8),
                            Text(
                              text,
                              textAlign: TextAlign.center,
                              style: context.titleSmall?.semiBold
                                  .toColor(textColor ?? AppColors.white),
                            ),
                          ],
                        )
                      : Text(
                          text,
                          textAlign: TextAlign.center,
                          style: context.titleSmall?.semiBold
                              .toColor(textColor ?? AppColors.white),
                        ),
            ),
          ),
        ),
      ),
    );
  }
}