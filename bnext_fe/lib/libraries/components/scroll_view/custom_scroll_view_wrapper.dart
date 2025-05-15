// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';

import '../../libraries.dart';

class CustomScrollViewWrapper extends StatelessWidget {
  const CustomScrollViewWrapper({
    super.key,
    required this.slivers,
    this.onTap,
    this.scrollController,
    this.physic = const ClampingScrollPhysics(),
  });

  final List<Widget> slivers;
  final Function? onTap;
  final ScrollController? scrollController;
  final ScrollPhysics physic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusHelper.unfocus();
        onTap?.call();
      },
      child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: CustomScrollView(
          controller: scrollController,
          physics: physic,
          slivers: slivers,
        ),
      ),
    );
  }
}
