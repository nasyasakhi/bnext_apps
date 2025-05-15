import 'package:flutter/material.dart';

/// Custom Widget for make a `Container` with `Padding` inside a `Sliver Widget`
class SliverBoxPadding extends StatelessWidget {
  const SliverBoxPadding({
    super.key,
    required this.child,
    this.padding,
    this.background,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: padding,
        color: background,
        child: child,
      ),
    );
  }
}

/// Custom Widget for make a `Column` with `Padding` inside a `Sliver Widget`
class SliverColumnPadding extends StatelessWidget {
  const SliverColumnPadding({
    super.key,
    required this.children,
    this.padding,
    this.mainAxisSize = MainAxisSize.max,
    this.background,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final Color? background;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: background,
        padding: padding,
        child: Column(
          mainAxisSize: mainAxisSize,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      ),
    );
  }
}

/// Custom Widget for make a `Row` with `Padding` inside a `Sliver Widget`
class SliverRowPadding extends StatelessWidget {
  const SliverRowPadding({
    super.key,
    required this.children,
    this.padding,
    this.mainAxisSize = MainAxisSize.max,
    this.background,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final Color? background;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: background,
        padding: padding,
        child: Row(
          mainAxisSize: mainAxisSize,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      ),
    );
  }
}
