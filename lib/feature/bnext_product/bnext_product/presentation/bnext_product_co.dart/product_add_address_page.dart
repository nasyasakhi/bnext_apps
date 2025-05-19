import 'package:gap/gap.dart';
import '../../../../../core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../config/theme/theme.dart';
import '../../../../../libraries/libraries.dart';

@RoutePage()
class ProductAddAddressPage extends StatefulWidget {
  const ProductAddAddressPage({super.key});

  @override
  State<ProductAddAddressPage> createState() => _ProductAddAddressPageState();
}

class _ProductAddAddressPageState extends State<ProductAddAddressPage> {
  late final TextEditingController _messageController = TextEditingController();
  late final TextEditingController _nameController = TextEditingController();
  late final TextEditingController _numberPhoneController =
      TextEditingController();
  late final TextEditingController _alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        title: 'Tambah Alamat',
        enableBackButton: true,
      ),
      body: CustomColumn(
        padding: const EdgeInsets.all(16),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nama Lengkap',
            style: context.labelLarge?.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(Sizes.p8),
          CustomTextFormField(
            textController: _nameController,
            hint: 'Aditya Pramudito',
          ),
          const Gap(Sizes.p16),
          Text(
            'Nomor Telepon Aktif',
            style: context.labelLarge?.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(Sizes.p8),
          CustomTextFormField(
            textController: _numberPhoneController,
            hint: '+62 8xxx xxxx xxxx',
          ),
          const Gap(Sizes.p16),
          Text(
            'Alamat ',
            style: context.labelLarge?.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(Sizes.p8),
          CustomTextFormField(
            textController: _alamatController,
            hint: 'Provinsi, Kota, Kecamatan, Kode Pos',
            isReadOnly: true,
            suffixIcon: const Icon(Icons.arrow_drop_down_rounded,
                color: AppColors.white, size: 30),
          ),
          const Gap(Sizes.p16),
          Text(
            'Detail Lainnya',
            style: context.labelLarge?.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(Sizes.p8),
          CustomTextFormField(
            maxLines: 5,
            textController: _messageController,
            hint: 'Teks yang dimasukkan',
          ),
          const Gap(Sizes.p16),
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.grey,
              image: const DecorationImage(
                opacity: 0.5,
                image: AssetImage(AppImages.gmaps),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: GestureDetector(
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.primary2,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text('Tambah Lokasi',
                      style: context.labelMedium?.copyWith(
                        color: AppColors.white,
                      )),
                ),
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: PrimaryButton(
                width: MediaQuery.of(context).size.width * 0.8,
                text: 'Konfirmasi',
                onPressed: () {
                  context.router.maybePop();
                }),
          ),
        ],
      ),
    );
  }
}

class AddresCard extends StatelessWidget {
  final String name;
  final String phone;
  final String address;
  final bool isPrimary;
  final Color backgroundColor;

  const AddresCard({
    required this.name,
    required this.phone,
    required this.address,
    required this.isPrimary,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.primary3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.location_on_outlined, color: AppColors.white),
              const Gap(Sizes.p8),
              Text(name,
                  style: context.labelLarge?.copyWith(color: AppColors.white)),
              const Gap(Sizes.p4),
              Text(phone,
                  style: context.bodyMedium?.copyWith(color: AppColors.white)),
            ],
          ),
          const Gap(Sizes.p12),
          Text(address,
              style: context.bodySmall?.copyWith(color: AppColors.white)),
          if (isPrimary) ...[
            const Gap(Sizes.p8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.primaryMain,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text('Utama',
                  style: context.labelSmall?.copyWith(color: Colors.white)),
            ),
          ]
        ],
      ),
    );
  }
}
