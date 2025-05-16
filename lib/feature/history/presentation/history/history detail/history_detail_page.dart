import 'package:auto_route/auto_route.dart';
import '../../../../../libraries/custome_line/custome_line_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../../config/config.dart';
import '../../../../../core/core.dart';
import '../../../../../libraries/libraries.dart';

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
              rowData(context, title: 'No Pesanan', data: '2024-0822-1234'),
              const Gap(Sizes.p4),
              rowData(context,
                  title: 'Tgl.Pesanan', data: 'Kamis, 22 Agu 2024'),
              const Gap(Sizes.p4),
              rowData(context,
                  title: 'Pilihan Layanan', data: 'Towing Gendong'),
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

  List<Widget> keterangan(BuildContext context) {
    return [
      Text('Keterangan',
          style: context.titleMedium?.copyWith(
              color: AppColors.primaryMain, fontWeight: FontWeight.w600)),
      const Gap(Sizes.p8),
      Text(
          'Lorem Ipsu simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrs standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
          style: context.bodySmall?.copyWith(color: AppColors.neutral60)),
      const Divider(
        color: AppColors.neutral50,
      ),
      const Gap(Sizes.p24),
    ];
  }

  List<Widget> biayaLayanan(BuildContext context) {
    return [
      Text('Biaya Layanan',
          style: context.titleMedium?.copyWith(
            color: AppColors.primaryMain,
            fontWeight: FontWeight.w600,
          )),
      biayaLayananCard(context),
      const Gap(Sizes.p24),
    ];
  }

  List<Widget> pembayaran(BuildContext context) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Metode Pembayaran',
              style: context.titleMedium?.copyWith(
                color: AppColors.primaryMain,
                fontWeight: FontWeight.w600,
              )),
          Text('Ganti',
              style: context.labelLarge?.copyWith(
                color: AppColors.dangerMain,
                fontWeight: FontWeight.w600,
              )),
        ],
      ),
      paymentMethodCard(context),
      const Gap(Sizes.p8),
      Row(
        children: [
          Checkbox(
            value: false,
            onChanged: (value) {},
          ),
          Expanded(
            child: RichText(
                text: TextSpan(
                    text: 'Saya setuju dengan',
                    style:
                        context.bodySmall?.copyWith(color: AppColors.neutral60),
                    children: [
                  TextSpan(
                      text: ' Syarat & Ketentuan',
                      style: context.bodySmall?.copyWith(
                        color: AppColors.primaryMain,
                        fontWeight: FontWeight.w600,
                      )),
                  TextSpan(
                    text: ' dan ',
                    style:
                        context.bodySmall?.copyWith(color: AppColors.neutral60),
                  ),
                  TextSpan(
                      text: ' Kebijakan & Privasi ',
                      style: context.bodySmall?.copyWith(
                        color: AppColors.primaryMain,
                        fontWeight: FontWeight.w600,
                      )),
                  TextSpan(
                    text: ' dari ',
                    style:
                        context.bodySmall?.copyWith(color: AppColors.neutral60),
                  ),
                  TextSpan(
                    text: 'Aplikasi ITS',
                    style:
                        context.bodySmall?.copyWith(color: AppColors.neutral60),
                  ),
                ])),
          )
        ],
      ),
      const Gap(Sizes.p16),
      Padding(
        padding: const EdgeInsets.all(16),
        child: PrimaryButton(
          text: 'Bayar',
          onPressed: () {
            context.router.back();
          },
        ),
      ),
    ];
  }

  Container paymentMethodCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 19),
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: AppColors.buttonPrimarylight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(AppIcons.walletIcon, height: 20),
              const Gap(Sizes.p12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kartu Kredit/Debit',
                    style: context.labelLarge?.toWeight(FontWeight.bold),
                  ),
                  Text(
                    'VISA dan Mastercard',
                    style: context.labelLarge,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container biayaLayananCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 19),
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: AppColors.buttonPrimarylight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Biaya Layanan',
            style: context.bodyMedium,
          ),
          const Gap(Sizes.p8),
          Text(
            'Rp. 125.000',
            style: context.titleLarge
                ?.toWeight(FontWeight.w600)
                .toColor(AppColors.primaryMain),
          ),
        ],
      ),
    );
  }

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

  Widget cardFoto(BuildContext contex, {String? tittle, double? height}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tittle ?? '',
            style: context.titleSmall?.copyWith(
                color: AppColors.black, fontWeight: FontWeight.w600)),
        const Gap(Sizes.p8),
        CardWrapper(
            borderRadius: BorderRadius.circular(16),
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
            backgroundColor: AppColors.buttonPrimarylight,
            splashColor: AppColors.primaryMain,
            child: CustomColumn(children: [
              SizedBox(
                height: height ?? 100,
                child: Center(
                  child: SvgPicture.asset(
                    AppIcons.imagePlaceholder,
                  ),
                ),
              )
            ])),
      ],
    );
  }

  List<Widget> dataFoto(BuildContext context) {
    return [
      Text('Data Foto',
          style: context.titleMedium?.copyWith(
              color: AppColors.primaryMain, fontWeight: FontWeight.w600)),
      const Gap(Sizes.p20),
      Row(
        children: [
          Expanded(child: cardFoto(context, tittle: 'Depan')),
          const Gap(Sizes.p40),
          Expanded(child: cardFoto(context, tittle: 'Belakang')),
        ],
      ),
      const Gap(Sizes.p20),
      Row(
        children: [
          Expanded(child: cardFoto(context, tittle: 'Samping Kiri')),
          const Gap(Sizes.p40),
          Expanded(child: cardFoto(context, tittle: 'Samping Kanan')),
        ],
      ),
      const Gap(Sizes.p20),
      cardFoto(context, tittle: 'STNK'),
      const Gap(Sizes.p20),
      cardFoto(context, tittle: 'SIM', height: 150),
      const Gap(Sizes.p24),
    ];
  }

  List<Widget> dataKendaraan(BuildContext context) {
    return [
      Text('Data Kendaraan',
          style: context.titleMedium?.copyWith(
              color: AppColors.primaryMain, fontWeight: FontWeight.w600)),
      const Gap(Sizes.p8),
      CustomTextFormField(
        isReadOnly: true,
        label: 'Nama Pemesan',
        hint: 'Pilih Nomor Mesin anda',
        textController: TextEditingController(text: 'Otomatis Terisi'),
      ),
      const Gap(Sizes.p8),
      CustomTextFormField(
        isReadOnly: true,
        textController: TextEditingController(text: 'Otomatis Terisi'),
        label: 'Nomor Whatsapp',
        hint: 'Pilih Nomor Mesin anda',
      ),
      const Gap(Sizes.p8),
      CustomTextFormField(
        isReadOnly: true,
        textController: TextEditingController(text: 'Mobil'),
        label: 'Kategori',
        hint: 'Pilih Nomor Mesin anda',
      ),
      const Gap(Sizes.p8),
      CustomTextFormField(
        isReadOnly: true,
        textController: TextEditingController(text: 'BMW 3 SERIES'),
        label: 'Merek',
        hint: 'Pilih Nomor Mesin anda',
      ),
      const Gap(Sizes.p8),
      CustomTextFormField(
        isReadOnly: true,
        textController: TextEditingController(text: 'M3'),
        label: 'Tipe',
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
        textController: TextEditingController(text: 'B 1879 MCT'),
        label: 'Nomor Polisi',
        hint: 'Pilih Nomor Mesin anda',
      ),
      const Gap(Sizes.p8),
      CustomTextFormField(
        isReadOnly: true,
        textController: TextEditingController(text: '0000 0000 0000'),
        label: 'Nomor SIM',
        hint: 'Pilih Nomor Mesin anda',
      ),
      const Gap(Sizes.p8),
      CustomTextFormField(
        isReadOnly: true,
        textController: TextEditingController(text: '0000 0000 0000'),
        label: 'Nomor STNK',
        hint: 'Pilih Nomor Mesin anda',
      ),
      const Gap(Sizes.p8),
      CustomTextFormField(
        isReadOnly: true,
        textController: TextEditingController(text: '0000 0000 0000'),
        label: 'Nomor Mesin',
        hint: 'Pilih Nomor Mesin anda',
      ),
      const Gap(Sizes.p8),
      CustomTextFormField(
        isReadOnly: true,
        textController: TextEditingController(text: '0000 0000 0000'),
        label: 'Nomor Rangka',
        hint: 'Pilih Nomor Mesin anda',
      ),
      const Gap(Sizes.p36),
    ];
  }

  Widget rowData(BuildContext context, {required String title, String? data}) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              title,
              style: context.bodySmall?.toColor(AppColors.primaryMain),
            )),
        Expanded(
            flex: 2,
            child: Text(
              "   : ${data ?? '-'}",
              style: context.labelMedium
                  ?.toColor(AppColors.primaryMain)
                  .toWeight(FontWeight.w600),
            )),
      ],
    );
  }
}
