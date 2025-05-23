import 'package:bnext/feature/profile/presentation/language/components/build_menu.dart';
import 'package:gap/gap.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bnext/libraries/libraries.dart';

@RoutePage()
class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: PrimaryAppBar(
        enableBackButton: true,
        title: context.appLang.language,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomColumn(
            children: [
              const Gap(Sizes.p56),
              BuildMenu(context: context),
            ],
          ),
        ),
      ),
    );
  }
}