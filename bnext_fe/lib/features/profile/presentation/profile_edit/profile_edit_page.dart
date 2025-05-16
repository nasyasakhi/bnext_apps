import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/build_context_extension.dart';
import 'package:bnext_fe/features/shared/domain/entities/user_entity.dart';
import 'package:bnext_fe/features/shared/presentation/profile/cubit/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../libraries/libraries.dart';
import '../../../../config/theme/app_colors.dart';

@RoutePage()
class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  UserEntity? user;

  final TextEditingController emailController =
      TextEditingController(text: 'mascotanjar@gmail.com');
  final TextEditingController phoneController =
      TextEditingController(text: '+62812345678');
  final TextEditingController ktpController =
      TextEditingController(text: '12345690');
  final TextEditingController kkController =
      TextEditingController(text: '1234567890');
  final TextEditingController genderController =
      TextEditingController(text: 'Laki-laki');
  final TextEditingController birthDateController =
      TextEditingController(text: '23 Maret 1998');
  final TextEditingController addressController =
      TextEditingController(text: 'lorem ipsum');
  final TextEditingController locationController =
      TextEditingController(text: 'lorem ipsum');
  final TextEditingController bankAccountController =
      TextEditingController(text: '123456789');

  @override
  void initState() {
    user = context.read<UserCubit>().state.user;

    initUser();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    ktpController.dispose();
    kkController.dispose();
    genderController.dispose();
    birthDateController.dispose();
    addressController.dispose();
    locationController.dispose();
    bankAccountController.dispose();
    super.dispose();
  }

  void initUser() {
    emailController.text = user?.userProfile?.email ?? '';
    phoneController.text = '+62 ${user?.userProfile?.phoneNumber}';
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: CustomColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfilePhoto(),
            _buildFormFields(),
            const Gap(Sizes.p36),
            _buildSaveButton(),
            const Gap(Sizes.p32),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.white),
        onPressed: () => context.router.maybePop(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Image.asset(AppIcons.settingsIcon, height: 24),
        )
      ],
    );
  }

  Widget _buildProfilePhoto() {
    return Center(
      child: CustomColumn(
        padding: const EdgeInsets.only(bottom: Sizes.p32),
        children: [
          Stack(
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(AppImages.avatarPlaceholder),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: AppColors.primaryMain,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    color: AppColors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
          const Gap(Sizes.p14),
          Text(
            user?.username ?? '',
            style: context.titleMedium?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '@${user?.userProfile?.email}',
            style: context.labelMedium?.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormFields() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildField('Alamat E-Mail', emailController),
          const Gap(Sizes.p16),
          _buildField('Nomor Telepon', phoneController),
          const Gap(Sizes.p16),
          _buildField('Nomor KTP', ktpController),
          const Gap(Sizes.p16),
          _buildField('Nomor KK', kkController),
          const Gap(Sizes.p16),
          _buildDropdownField('Jenis Kelamin', genderController),
          const Gap(Sizes.p16),
          _buildDateField('Tanggal Lahir', birthDateController),
          const Gap(Sizes.p16),
          _buildField('Alamat', addressController),
          const Gap(Sizes.p16),
          _buildField('Lokasi', locationController),
          const Gap(Sizes.p16),
          _buildField('Akun M-Banking', bankAccountController),
        ],
      ),
    );
  }

  Widget _buildField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.labelMedium?.copyWith(
            color: AppColors.white,
          ),
        ),
        const Gap(Sizes.p8),
        CustomTextFormField(
          textController: controller,
        ),
      ],
    );
  }

  Widget _buildDropdownField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.labelMedium?.copyWith(
            color: AppColors.white,
          ),
        ),
        const Gap(Sizes.p8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: AppColors.backGroundSecondary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                controller.text,
                style: context.bodyMedium?.copyWith(
                  color: AppColors.white,
                ),
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDateField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.labelMedium?.copyWith(
            color: AppColors.white,
          ),
        ),
        const Gap(Sizes.p8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: AppColors.backGroundSecondary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                controller.text,
                style: context.bodyMedium?.copyWith(
                  color: AppColors.white,
                ),
              ),
              const Icon(
                Icons.calendar_today_outlined,
                color: AppColors.white,
                size: 18,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSaveButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: PrimaryButton(
        text: 'Simpan',
        width: double.infinity,
        onPressed: () {
          context.router.maybePop();
        },
        backgroundColor: AppColors.primaryMain,
      ),
    );
  }
}
