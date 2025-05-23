import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/libraries/components/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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