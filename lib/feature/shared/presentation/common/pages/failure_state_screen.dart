import 'package:bnext/core/presentation/presentation.dart';
import 'package:bnext/libraries/libraries.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FailureStateScreen extends StatelessWidget {
  const FailureStateScreen({
    super.key,
    this.title = 'Terjadi kesalahan!',
    this.message,
    this.retry,
    this.isWithIllustration = true,
    this.padding,
    this.isFullPageWithRefresh = false,
  });

  final String title;
  final String? message;
  final VoidCallback? retry;
  final bool isWithIllustration;
  final EdgeInsetsGeometry? padding;
  final bool isFullPageWithRefresh;

  @override
  Widget build(BuildContext context) {
    if (isFullPageWithRefresh) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return RefreshIndicator(
            onRefresh: () async {
              retry?.call();
            },
            child: CustomSingleChildScrollViewWrapper(
              physic: const AlwaysScrollableScrollPhysics(),
              children: [
                SizedBox(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  child: _child(context),
                ),
              ],
            ),
          );
        },
      );
    } else {
      return _child(context);
    }
  }

  Widget _child(BuildContext context) {
    return Center(
      child: Padding(
        padding:
            const EdgeInsets.all(Sizes.p16).add(padding ?? EdgeInsets.zero),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isWithIllustration) ...[
              // SvgPicture.asset(
              //   AppIllus.error,
              //   height: 72,
              // ),
              // Gap.h16,
            ],
            Text(
              title,
              style: context.bodyLarge?.bold,
              textAlign: TextAlign.center,
            ),
            if (message != null) ...[
              const Gap(Sizes.p8),
              Text(
                message!,
                textAlign: TextAlign.center,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            if (retry != null) ...[
              const Gap(Sizes.p16),
              // LinkButton(
              //   text: 'Coba Lagi',
              //   isBold: true,
              //   onPressed: () => retry!(),
              // ),
            ],
          ],
        ),
      ),
    );
  }
}

class FailureStatePagination extends StatelessWidget {
  const FailureStatePagination({
    super.key,
    this.message = 'Terjadi kesalahan, tekan untuk coba lagi',
    required this.onRetry,
  });

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onRetry,
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                message,
                textAlign: TextAlign.center,
              ),
              const Gap(Sizes.p8),
              const Icon(
                Icons.refresh,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
