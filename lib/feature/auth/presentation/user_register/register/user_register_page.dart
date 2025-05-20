import 'package:bnext/config/local/box_keys.dart';
import 'package:bnext/feature/auth/presentation/user_register/register/components/header_section.dart';
import 'package:hive/hive.dart';

import '../../../params/register_params.dart';
import '../cubit/user_register_cubit.dart';
import '../cubit/user_register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../../../../../core/core.dart';
import 'package:flutter/material.dart';
import '../../../../../config/config.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../libraries/common/constants/validators.dart';
import '../../../../../libraries/libraries.dart';

@RoutePage()
class UserRegisterPage extends StatefulWidget {
  const UserRegisterPage({super.key});

  @override
  State<UserRegisterPage> createState() => _UserRegisterPageState();
}

class _UserRegisterPageState extends State<UserRegisterPage> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _alamatEmailController = TextEditingController();
  final TextEditingController _numberPhoneController = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _confirmpasswordcontroller =
      TextEditingController();
  final TextEditingController _kodeReffController = TextEditingController();

  bool checkBox = false;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      // resizeToAvoidBottomInset: false,
      appBar: const PrimaryAppBar(
        enableBackButton: true,
      ),
      body: BlocProvider(
        create: (context) => locator<UserRegisterCubit>(),
        child: BlocConsumer<UserRegisterCubit, UserRegisterState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              success: () {
                final box = Hive.box(BoxKeys.credentialAuth);
                box.put('username', _usernamecontroller.text);
                box.put('password', _passwordcontroller.text);
                context.router
                    .push(OtpRoute(email: _alamatEmailController.text));
                SnackbarHelper.showSuccess(context,
                    'OTP Berhasil dikirim ke email ${_alamatEmailController.text}');
              },
              error: (error) => SnackbarHelper.showError(
                  context, error.errorMessage ?? error.readableMessage),
              // error: (error) {
              //   context.router
              //       .push(OtpRoute(email: _alamatEmailController.text));
              // },
            );
          },
          builder: (context, state) {
            return SafeArea(
              child: Center(
                child: CustomSingleChildScrollViewWrapper(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  bodyWrapper: (child) {
                    return Form(
                      key: _formKey,
                      child: AbsorbPointer(
                          absorbing: state.isLoading, child: child),
                    );
                  },
                  children: [
                    CustomColumn(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Sizes.p28),
                      children: [
                        HeaderSection(context: context),
                        _mainSection(context),
                        _bottomSection(context, state),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _mainSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          label: 'Nama Pengguna',
          isRequiredLabel: true,
          hint: '@nama_pengguna',
          textController: _usernamecontroller,
          validator: (value) {
            return value!.length < 4 ? "Enter min. 4 characters" : null;
          },
        ),
        const Gap(Sizes.p16),
        CustomTextFormField(
          label: 'Alamat E-mail',
          isRequiredLabel: true,
          hint: 'example@domain.com',
          textController: _alamatEmailController,
          validator: (value) {
            return !Validators.isValidEmail(value!)
                ? 'Enter a valid email'
                : null;
          },
        ),
        const Gap(Sizes.p16),
        CustomTextFormField(
          label: 'Nomor Teleon Aktif',
          isRequiredLabel: true,
          hint: 'Contoh 8123456XXX',
          isPhoneNumber: true,
          textController: _numberPhoneController,
          validator: (value) {
            return value!.length < 9 ? "Enter min. 9 characters" : null;
          },
        ),
        const Gap(Sizes.p16),
        CustomTextFormField(
          label: 'Buat Kata Sandi',
          hint: 'Harus terdiri dari 8 - 12 karakter',
          isPassword: true,
          isRequiredLabel: true,
          textController: _passwordcontroller,
          validator: (value) {
            if (value!.length < 4) {
              return "Enter min. 4 characters";
            }
            if (value != _passwordcontroller.text) {
              return "Passwords do not match";
            }
            return null;
          },
        ),
        const Gap(Sizes.p16),
        CustomTextFormField(
          label: 'Masukan Kembali Kata Sandi',
          hint: 'Harus terdiri dari 8 - 12 karakter',
          isRequiredLabel: true,
          isPassword: true,
          textController: _confirmpasswordcontroller,
          validator: (value) {
            if (value!.length < 4) {
              return "Enter min. 4 characters";
            }
            if (value != _passwordcontroller.text) {
              return "Passwords do not match";
            }
            return null;
          },
        ),
        const Gap(Sizes.p16),
        CustomTextFormField(
          textController: _kodeReffController,
          label: 'Kode Refferal',
          // isRequiredLabel: true,
          hint: 'Masukkan kode refferal',
        ),
        const Gap(Sizes.p20),
      ],
    );
  }

  Widget _bottomSection(BuildContext context, UserRegisterState state) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: checkBox,
              onChanged: (value) {
                if (_formKey.currentState?.validate() == true) {
                  setState(() {
                    checkBox = value ?? false;
                  });
                }
              },
            ),
            Expanded(
              child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                      text: 'Saya mengonfirmasi bahwa saya setuju\ndengan ',
                      style: context.bodySmall,
                      children: [
                        TextSpan(text: 'semua', style: context.bodySmall),
                        TextSpan(
                            text: ' ketentuan layanan',
                            style: context.bodySmall?.copyWith(
                              color: AppColors.primaryMain,
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(text: ' dan ', style: context.bodySmall),
                        TextSpan(
                            text: 'Kebijakan Privasi ',
                            style: context.bodySmall?.copyWith(
                              color: AppColors.primaryMain,
                              fontWeight: FontWeight.w600,
                            )),
                      ])),
            ),
          ],
        ),
        const Gap(Sizes.p28),
        PrimaryButton(
          isLoading: state.isLoading,
          text: 'Buat Akun',
          width: double.infinity,
          onPressed:
              _formKey.currentState?.validate() == true && checkBox == true
                  ? () => _navigateToOtp(context)
                  : null,
        ),
        const Gap(Sizes.p12),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            text: 'Belum punya akun? ',
            style: context.bodySmall,
            children: [
              TextSpan(
                text: 'Daftar',
                style: context.bodySmall?.toColor(AppColors.primaryMain)),
            ]
          )
        ),
        const Gap(Sizes.p16),
      ],
    );
  }

  void _navigateToOtp(BuildContext context) {
    context.read<UserRegisterCubit>().register(RegisterParams(
        confirmPassword: _confirmpasswordcontroller.text,
        email: _alamatEmailController.text,
        password: _passwordcontroller.text,
        phoneNumber: _numberPhoneController.text,
        refferal: _kodeReffController.text,
        username: _usernamecontroller.text));
  }
}
