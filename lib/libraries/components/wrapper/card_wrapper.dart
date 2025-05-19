import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';
import 'wrapper.dart';

class CardWrapper extends StatelessWidget {
  const CardWrapper({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.borderRadius,
    this.backgroundColor,
    this.isShowShadow = true,
    this.isMainColorShadow = false,
    this.borderColor,
    this.borderWidth,
    this.splashColor,
    this.isInkWellOnTop = false,
    this.isAnimated = false,
    required this.child,
    this.onTap,
  });

  final Widget child;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final bool isShowShadow;
  final bool isMainColorShadow;
  final Color? splashColor;
  final bool isInkWellOnTop;
  final bool isAnimated;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: isAnimated ? 200 : 0),
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: (borderRadius ?? BorderRadius.circular(Sizes.p4)).add(
          BorderRadius.all(
            Radius.circular(
              (borderColor != null || borderWidth != null) ? 2 : 0,
            ),
          ),
        ),
        border: (borderColor != null || borderWidth != null)
            ? Border.all(
                color: borderColor ?? AppColors.neutral20,
                width: borderWidth ?? 1,
              )
            : null,
        boxShadow: isShowShadow
            ? [
                BoxShadow(
                  color: isMainColorShadow
                      ? AppColors.neutral100.withOpacity(.1)
                      : Colors.transparent,
                  offset: const Offset(0, 5),
                  blurRadius: 15,
                ),
              ]
            : null,
      ),
      child: isInkWellOnTop ? _body() : _bottomLayerInkWellWrapper(_body()),
    );
  }

  Widget _bottomLayerInkWellWrapper(Widget child) {
    return InkWellWrapper(
      onTap: onTap,
      splashColor: splashColor,
      borderRadius: borderRadius ?? BorderRadius.circular(Sizes.p4),
      child: child,
    );
  }

  Widget _body() {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(Sizes.p4),
      child: Stack(
        children: [
          Padding(
            padding: padding ?? EdgeInsets.zero,
            child: child,
          ),
          if (onTap != null && isInkWellOnTop)
            Positioned.fill(
              child: InkWellWrapper(
                onTap: onTap,
                splashColor: splashColor,
              ),
            ),
        ],
      ),
    );
  }
}
