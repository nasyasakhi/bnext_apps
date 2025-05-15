// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';

import '../../libraries.dart';

class CustomSingleChildScrollViewWrapper extends StatelessWidget {
  const CustomSingleChildScrollViewWrapper({
    super.key,
    required this.children,
    this.padding,
    this.margin,
    this.onTap,
    this.disableGestureDetector = false,
    this.physic = const ClampingScrollPhysics(),
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.scrollDirection = Axis.vertical,
    this.controller,
    this.bodyWrapper,
  });

  final List<Widget> children;
  final Widget Function(Widget child)? bodyWrapper;
  final Axis scrollDirection;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Function? onTap;
  final bool disableGestureDetector;
  final ScrollPhysics physic;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disableGestureDetector
          ? null
          : () {
              FocusHelper.unfocus();
              onTap?.call();
            },
      child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: Container(
          margin: margin,
          child: SingleChildScrollView(
            controller: controller,
            padding: padding,
            physics: physic,
            scrollDirection: scrollDirection,
            child: bodyWrapper != null ? bodyWrapper!(child()) : child(),
          ),
        ),
      ),
    );
  }

  Widget child() {
    if (scrollDirection == Axis.vertical) {
      return Column(
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        children: children,
      );
    } else {
      return Row(
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        children: children,
      );
    }
  }
}
