import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';
import '../../libraries.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String prefixIcon;

  const SearchBarWidget({
    super.key,
    required this.textEditingController,
    this.hintText = 'Search for...',
    this.prefixIcon = AppIcons.searchIcon,
  });

  @override
  Widget build(BuildContext context) {
    final borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: const BorderSide(
        color: AppColors.buttonPrimarylight,
      ),
    );

    return TextFormField(
      controller: textEditingController,
      onChanged: (value) {},
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      style: context.bodySmall?.normal,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        border: borderStyle,
        enabledBorder: borderStyle,
        filled: true,
        fillColor: AppColors.buttonPrimarylight,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: Sizes.p8, left: Sizes.p24),
          child: SvgPicture.asset(
            prefixIcon,
            width: Sizes.p22,
            height: Sizes.p22,
          ),
        ),
        prefixIconConstraints: const BoxConstraints(
          minHeight: 28,
          maxHeight: 40,
        ),
        hintText: hintText,
        hintStyle: context.bodySmall?.normal,
        isDense: true,
      ),
    );
  }
}