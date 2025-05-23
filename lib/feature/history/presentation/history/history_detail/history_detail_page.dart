import 'package:auto_route/auto_route.dart';
import 'package:bnext/feature/history/presentation/history/history_detail/components/components.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:bnext/config/config.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/libraries/libraries.dart';

@RoutePage()
class HistoryDetailPage extends StatefulWidget {
  const HistoryDetailPage({super.key});

  @override
  State<HistoryDetailPage> createState() => _HistoryDetailPageState();
}

class _HistoryDetailPageState extends State<HistoryDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool selectedIndex = true;

  int formpages = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        enableBackButton: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.p24,
          vertical: Sizes.p20,
        ),
        child: ListView(
          children: [
            ..._mainSection(context),
          ],
        ),
      ),
    );
  }

  List<Widget> _mainSection(BuildContext context) {
    return [
      Text('Pesanan',
          style: context.titleLarge?.copyWith(
              color: AppColors.primaryMain, fontWeight: FontWeight.w600)),
      const Gap(Sizes.p20),
      _buttonSelect(context),
      const Gap(Sizes.p24),
      ..._buildFormPage(context),
    ];
  }

  List<Widget> _buildFormPage(BuildContext context) {
    return [
      if (formpages == 0) ...[
        CardWrapper(
            borderRadius: BorderRadius.circular(8),
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
            backgroundColor: AppColors.buttonPrimarylight,
            splashColor: AppColors.primaryMain,
            child: CustomColumn(children: [
              RowData(context: context, title: 'No Pesanan', data: '2024-0822-1234'),
              const Gap(Sizes.p4),
              RowData(context: context, title: 'Tgl.Pesanan', data: 'Kamis, 22 Agu 2024'),
              const Gap(Sizes.p4),
              RowData(context: context, title: 'Pilihan Layanan', data: 'Towing Gendong'),
            ])),
        const Gap(Sizes.p20),
        ...dataKendaraan(context),
        ...dataFoto(context),
        ...dataLokasi(context),
        ...keterangan(context),
        ...biayaLayanan(context),
        ...pembayaran(context),
      ],
      if (formpages == 1) ...[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
                child: CardWrapper(
                    borderRadius: BorderRadius.circular(8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 23, vertical: 12),
                    backgroundColor: AppColors.buttonPrimarylight,
                    splashColor: AppColors.primaryMain,
                    child: const SizedBox(
                      height: 170,
                      width: 130,
                    ))),
            const Gap(Sizes.p12),
            Expanded(
              child: CustomColumn(children: [
                CustomTextFormField(
                  isReadOnly: true,
                  textController:
                      TextEditingController(text: 'Raihan Adisatya'),
                  label: 'Nama Pengemudi',
                  hint: 'Pilih Nomor Mesin anda',
                ),
                const Gap(Sizes.p8),
                CustomTextFormField(
                  isReadOnly: true,
                  textController: TextEditingController(text: 'JKT.0000.0000'),
                  label: 'Nomor ID. Pengemudi',
                  hint: 'Pilih Nomor Mesin anda',
                ),
                const Gap(Sizes.p8),
                CustomTextFormField(
                  isReadOnly: true,
                  textController: TextEditingController(text: 'JKT.0000.0000'),
                  label: 'No. ID Kendaraan',
                  hint: 'Pilih Nomor Mesin anda',
                ),
              ]),
            ),
          ],
        ),
        const Gap(Sizes.p16),
        CustomTextFormField(
          isReadOnly: true,
          textController: TextEditingController(text: 'Towing Gendong'),
          label: 'Jenis Kendaraan',
          hint: 'Pilih Nomor Mesin anda',
        ),
        const Gap(Sizes.p8),
        CustomTextFormField(
          isReadOnly: true,
          textController: TextEditingController(text: 'Hino'),
          label: 'Merek Kendaraan',
          hint: 'Pilih Nomor Mesin anda',
        ),
        const Gap(Sizes.p8),
        CustomTextFormField(
          isReadOnly: true,
          textController: TextEditingController(text: '2023'),
          label: 'Tahun Kendaraan',
          hint: 'Pilih Nomor Mesin anda',
        ),
        const Gap(Sizes.p8),
        CustomTextFormField(
          isReadOnly: true,
          textController: TextEditingController(text: 'B 1234 MCT'),
          label: 'Nomor Plat Kendaraan',
          hint: 'Pilih Nomor Mesin anda',
        ),
        const Gap(Sizes.p32),
        Row(
          children: [
            Expanded(
              child: PrimaryButton(
                icon: AppIcons.meesagge,
                text: 'Pesan',
                backgroundColor: AppColors.buttonPrimarylight,
                textColor: AppColors.primaryMain,
                onPressed: () {},
              ),
            ),
            const Gap(Sizes.p12),
            Expanded(
              child: PrimaryButton(
                icon: AppIcons.whatsapp,
                text: 'Call',
                onPressed: () {},
              ),
            ),
          ],
        )
      ]
    ];
  }

  Widget _buttonSelect(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PrimaryButton(
            text: 'Data Pesanan',
            backgroundColor: selectedIndex
                ? AppColors.primaryMain
                : AppColors.buttonPrimarylight,
            textColor: selectedIndex ? null : AppColors.primaryMain,
            onPressed: () {
              setState(() {
                selectedIndex = true;
                formpages = 0;
              });
            },
          ),
        ),
        const Gap(Sizes.p32),
        Expanded(
          child: PrimaryButton(
            text: 'Data Pengemudi',
            backgroundColor: !selectedIndex
                ? AppColors.primaryMain
                : AppColors.buttonPrimarylight,
            textColor: !selectedIndex ? null : AppColors.primaryMain,
            onPressed: () {
              setState(() {});
              selectedIndex = false;
              formpages = 1;
            },
          ),
        ),
      ],
    );
  }
}