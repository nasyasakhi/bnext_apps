import 'package:bnext_fe/config/theme/theme.dart';
import 'package:bnext_fe/core/presentation/presentation.dart';
import 'package:flutter/material.dart';

import '../../../../libraries/libraries.dart';
import '../common/common.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PrimaryAppBar(
        title: 'Kembali',
      ),
      backgroundColor: AppColors.neutral10,
      body: FailureStateScreen(
        title: 'Page Not Found',
        message: "We're sorry, the page you requested could not be found.",
        padding: EdgeInsets.all(Sizes.p24),
      ),
    );
  }
}
