import 'package:flutter/material.dart';
import '../wrapper/custom_sliver_wrapper.dart';

import '../../../core/core.dart';


class AdaptiveLoadingIndicator extends StatelessWidget {
  const AdaptiveLoadingIndicator({
    super.key,
    this.size = Sizes.p24,
    this.strokeWidth = 3,
    this.color,
  });

  final double size;
  final double strokeWidth;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: CircularProgressIndicator.adaptive(
          strokeWidth: 3,
          valueColor:
              color != null ? AlwaysStoppedAnimation<Color>(color!) : null,
        ),
      ),
    );
  }
}

class SliverAdaptiveLoadingIndicator extends StatelessWidget {
  const SliverAdaptiveLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverBoxPadding(
      child: AdaptiveLoadingIndicator(),
    );
  }
}
