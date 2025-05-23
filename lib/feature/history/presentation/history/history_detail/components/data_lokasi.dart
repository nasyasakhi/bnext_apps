  import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/libraries/common/constants/app_resources.dart';
import 'package:bnext/libraries/custome_line/custome_line_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

List<Widget> dataLokasi(BuildContext context) {
    return [
      Text('Data Lokasi',
          style: context.titleMedium?.copyWith(
              color: AppColors.primaryMain, fontWeight: FontWeight.w600)),
      const Gap(Sizes.p16),
      Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AppIcons.arrowTop,
                height: 23,
              ),
              const Gap(Sizes.p8),
              CustomPaint(
                size: const Size(0, 25),
                painter: CustomeLineWidget(),
              ),
              const Gap(Sizes.p4),
              Image.asset(AppIcons.circleWhiteIcon, height: 23),
            ],
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lokasi Jemput',
                            style: context.labelMedium
                                ?.toColor(AppColors.neutral70),
                          ),
                          Text("Blackstone Garage",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: context.labelLarge
                                  ?.toWeight(FontWeight.w600)),
                        ],
                      ),
                    ),
                    Image.asset(AppIcons.googleMaps, height: 25),
                  ],
                ),
                const Gap(Sizes.p16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'Lokasi Tujuan, ',
                                style: context.labelMedium
                                    ?.toColor(AppColors.neutral70),
                                children: [
                                  TextSpan(
                                    text: '2 km',
                                    style: context.labelMedium
                                        ?.toWeight(FontWeight.w600),
                                  ),
                                ]),
                          ),
                          Text("Blackstone Garage",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: context.labelLarge
                                  ?.toWeight(FontWeight.w600)),
                        ],
                      ),
                    ),
                    Image.asset(AppIcons.googleMaps, height: 25),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      const Divider(
        color: AppColors.neutral50,
      ),
      const Gap(Sizes.p24),
    ];
  }