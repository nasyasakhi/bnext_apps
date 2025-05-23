import 'package:bnext/core/language_cubit/language_cubit.dart';
import 'package:bnext/feature/profile/presentation/language/components/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildMenu extends StatelessWidget {
  const BuildMenu({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      {'title': 'English', 'value': 'en', 'groupValue': 'id'},
      {'title': 'Bahasa Indonesia', 'value': 'id', 'groupValue': 'id'},
    ];

    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        final currentLocale = state.maybeMap(
          loaded: (loaded) => loaded.locale.languageCode,
          orElse: () => 'id'
        );
        return Column(
          children: menuItems
              .map((item) => MenuItem(
                  context: context,
                  value: item['value'] as String,
                  groupValue: currentLocale,
                  title: item['title'] as String))
              .toList(),
        );
      },
    );
  }
}
