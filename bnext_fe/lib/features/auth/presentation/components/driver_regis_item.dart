import 'package:gap/gap.dart';
import '../../../../core/core.dart';
import 'package:flutter/material.dart';
import '../../../../config/config.dart';
import '../../../../libraries/libraries.dart';


class VerifikasiDataRegisItemWidget extends StatelessWidget {
  const VerifikasiDataRegisItemWidget({
    super.key,
    required this.type,
    required this.desc,
    this.onTap,
  });

  final String type;
  final String desc;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CardWrapper(
          width: 316,
          borderWidth: Sizes.p2,
          borderColor: AppColors.primaryMain,
          backgroundColor: AppColors.buttonPrimarylight,
          borderRadius: BorderRadius.circular(Sizes.p8),
          splashColor: AppColors.primaryMain,
          onTap: onTap,
          padding: const EdgeInsets.only(
              top: Sizes.p16, bottom: Sizes.p16, left: 6, right: Sizes.p12),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style:
                        context.bodyMedium?.semiBold.toColor(AppColors.black),
                  ),
                  Text(
                    desc,
                    style: context.bodySmall?.normal.toColor(AppColors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: -16,
          top: 15,
          child: _circleArrow(),
        ),
      ],
    );
  }

  Widget _circleArrow() {
    return Container(
      width: Sizes.p42,
      height: Sizes.p42,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(Sizes.p42),
        border: Border.all(
          color: AppColors.primaryMain,
          width: Sizes.p2,
        ),
      ),
      child: const Center(
          child: Icon(
        Icons.chevron_right_rounded,
        color: AppColors.primaryMain,
        size: Sizes.p24,
      )),
    );
  }
}
