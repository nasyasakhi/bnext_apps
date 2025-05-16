import '../../../libraries/custome_line/custome_line_widget.dart';
import 'package:gap/gap.dart';
import '../../../core/core.dart';
import 'package:flutter/material.dart';
import '../../../config/theme/app_colors.dart';
import '../../../libraries/common/constants/app_resources.dart';

class HistoryItemWidget extends StatelessWidget {
  const HistoryItemWidget(
      {super.key,
      this.status,
      required this.nomorPeanan,
      this.km,
      this.locatoinDestination,
      this.locationpickUp,
      required this.onTap});

  final String? status;
  final String nomorPeanan;
  final String? km;
  final String? locatoinDestination;
  final String? locationpickUp;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: AppColors.buttonPrimarylight,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nomorPeanan,
                  style: context.titleSmall
                      ?.toColor(AppColors.primaryMain)
                      .toWeight(FontWeight.w600)),
              const SizedBox(height: 8.0),
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(2),
                },
                children: [
                  TableRow(
                    children: [
                      Text(
                        'Tanggal Pengiriman',
                        style:
                            context.labelMedium?.toColor(AppColors.neutral70),
                      ),
                      Container(),
                      Text(
                        'Biaya Layanan',
                        style:
                            context.labelMedium?.toColor(AppColors.neutral70),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text(
                        '01 Agu, 17:10',
                        style: context.titleSmall?.toWeight(FontWeight.w600),
                      ),
                      Container(),
                      Text(
                        'Rp. 1.500.000',
                        style: context.titleSmall?.toWeight(FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(Sizes.p16),
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(2),
                },
                children: [
                  TableRow(
                    children: [
                      Text(
                        'Data Perjalanan',
                        style: context.labelLarge
                            ?.toColor(AppColors.primaryMain)
                            .toWeight(FontWeight.w600),
                      ),
                      Container(),
                      if (status != null) ...[
                        Text(
                          'Status',
                          style: context.labelMedium
                              ?.toColor(AppColors.primaryMain),
                        ),
                      ] else
                        Container()
                    ],
                  ),
                  TableRow(children: [
                    Container(),
                    Container(),
                    if (status != null) ...[
                      Text(
                        status ?? '',
                        style: context.titleSmall
                            ?.toWeight(FontWeight.w600)
                            .toColor(status == 'SELESAI'
                                ? AppColors.green
                                : AppColors.redforIcons),
                      ),
                    ] else
                      Container()
                  ]),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
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
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lokasi Jemput',
                                      style: context.labelMedium
                                          ?.toColor(AppColors.neutral70),
                                    ),
                                    Text(locationpickUp ?? '',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: context.labelLarge
                                            ?.toWeight(FontWeight.w600)),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 130),
                            ],
                          ),
                          const Gap(Sizes.p16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
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
                                              text: '$km km',
                                              style: context.labelMedium
                                                  ?.toWeight(FontWeight.w600),
                                            ),
                                          ]),
                                    ),
                                    Text(locatoinDestination ?? '',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: context.labelLarge
                                            ?.toWeight(FontWeight.w600)),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 130),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: 130,
              child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.redforIcons,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text(
                  'Detail',
                  style: context.labelLarge?.toColor(AppColors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
