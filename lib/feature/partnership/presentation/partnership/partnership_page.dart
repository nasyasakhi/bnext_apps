import 'package:bnext/feature/partnership/presentation/partnership/components/partnership_button.dart';
import 'package:bnext/feature/partnership/presentation/partnership/components/partnership_desc.dart';
import 'package:bnext/feature/partnership/presentation/partnership/components/partnership_theme_and_services.dart';
import 'package:bnext/feature/partnership/presentation/partnership/components/partnership_title.dart';
import 'package:gap/gap.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:bnext/config/config.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bnext/libraries/libraries.dart';

@RoutePage()
class PartnershipPage extends StatelessWidget {
  const PartnershipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        title: 'Partnership',
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const PartnershipTitle(),
            const Gap(Sizes.p24),
            const PartnershipDescription(),
            const Gap(Sizes.p32),
            const PartnershipThemeAndServices(),
            const Spacer(),
            const PartnershipButton(),
          ],
        ),
      ),
    );
  }
}