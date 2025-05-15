// import 'package:cached_network_image/cached_network_image.dart';
import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../config/config.dart';
import '../../../../libraries/libraries.dart';

class TowingInformationItemCard extends StatelessWidget {
  const TowingInformationItemCard({
    super.key,
    required this.noKendaraanId,
    this.imageUrl,
    this.onTap,
  });

  final String noKendaraanId;
  final String? imageUrl;
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
              top: Sizes.p4, bottom: Sizes.p4, left: 6, right: Sizes.p12),
          child: Row(
            children: [
              // CachedNetworkImage(
              //     imageUrl: '',
              //     errorWidget: (context, url, error) {
              //       return Container(
              //         width: Sizes.p116,
              //         height: Sizes.p72,
              //         decoration: BoxDecoration(
              //           color: AppColors.white,
              //           borderRadius: BorderRadius.circular(Sizes.p4),
              //         ),
              //         child: Center(
              //           child: SvgPicture.asset(
              //             AppIcons.imagePlaceholder,
              //             color: AppColors.primaryMain,
              //             height: Sizes.p32,
              //             width: Sizes.p32,
              //           ),
              //         ),
              //       );
              //     },
              //     imageBuilder: (context, imageProvider) {
              //       return Container(
              //         width: Sizes.p172,
              //         height: Sizes.p104,
              //         decoration: BoxDecoration(
              //           color: AppColors.white,
              //           borderRadius: BorderRadius.circular(Sizes.p4),
              //           image: DecorationImage(
              //             image: imageUrl,
              //             fit: BoxFit.cover,
              //           ),
              //         ),
              //       );
              //     }),
              if (imageUrl != null)
                Container(
                    width: Sizes.p116,
                    height: Sizes.p72,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(Sizes.p4),
                    ),
                    child: Image.asset(imageUrl ?? ''))
              else
                Container(
                  width: Sizes.p116,
                  height: Sizes.p72,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(Sizes.p4),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      AppIcons.imagePlaceholder,
                      color: AppColors.primaryMain,
                      height: Sizes.p32,
                      width: Sizes.p32,
                    ),
                  ),
                ),
              const Gap(Sizes.p12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nomor ID. Kendaraan',
                    style: context.bodySmall?.normal.black,
                  ),
                  Text(
                    noKendaraanId,
                    style: context.bodyMedium?.semiBold.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: -16,
          top: 20,
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