import 'dart:async';
import 'package:bnext/feature/shared/presentation/profile/profile.dart';

import '../../params/verify_otp_params.dart';
import 'cubit/otp_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../../../../core/core.dart';
import 'package:flutter/material.dart';
import '../../../../config/config.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../libraries/libraries.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'component/otp_numpad_widget.dart';

import 'cubit/otp_cubit.dart';

@RoutePage()
class OtpPage extends StatefulWidget {
  const OtpPage({super.key, @PathParam('email') required this.email});

  final String email;

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController _pinController = TextEditingController();
  final _pinErrorController = StreamController<ErrorAnimationType>();
  late Timer _timer;
  int _start = 30;
  bool _canResend = false;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _pinErrorController.close();
    // _pinController.dispose();
    _timer.cancel();

    super.dispose();
  }

  void startTimer() {
    _start = 30;
    setState(() {
      _canResend = false;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_start <= 1) {
          _timer.cancel();
          _canResend = true;
        } else {
          _start--;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print('test ${widget.email}');
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        enableBackButton: true,
      ),
      body: BlocProvider(
        create: (context) => locator<OtpCubit>(),
        child: BlocConsumer<OtpCubit, OtpState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              succesResend: () =>
                  SnackbarHelper.showSuccess(context, 'Success Resend Otp'),
              success: (user) async {
                await context.read<UserCubit>().saveUser(user: user);

                context.router.replaceAll([const MainRoute()]);
                SnackbarHelper.showSuccess(context, 'Created account success');
              },
              error: (error) => SnackbarHelper.showError(
                  context, error.errorMessage ?? error.readableMessage),
            );
          },
          builder: (context, state) {
            return IgnorePointer(
              ignoring: state.isLoading,
              child: SingleChildScrollView(
                child: CustomColumn(
                  padding: const EdgeInsets.symmetric(
                      vertical: Sizes.p24, horizontal: Sizes.p40),
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _header(context),
                    // const Gap(Sizes.p32),
                    ..._mainSection(context, state),
                    const Gap(Sizes.p16),
                    _numpadSection(),
                    _bottomSection(context, state)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _bottomSection(BuildContext context, OtpState state) {
    return Column(children: [
      const Gap(Sizes.p40),
      PrimaryButton(
        text: 'Selanjutnya',
        width: MediaQuery.of(context).size.width * 0.7,
        onPressed: () {
          _navigateHome(context);
        },
        isLoading: state.isLoading,
      ),
      const Gap(Sizes.p32),
      // Text('Kirim kode lagi setelah 5 menit',
      //     style: context.titleSmall?.toColor(AppColors.white)),
    ]);
  }

  List<Widget> _mainSection(BuildContext context, OtpState state) {
    return [
      PinCodeTextField(
        length: 5,
        appContext: context,
        keyboardType: TextInputType.none,
        controller: _pinController,
        enableActiveFill: true,
        cursorColor: AppColors.infoBorder,
        onCompleted: (value) => _navigateHome(context),
        beforeTextPaste: (text) {
          final isValid = text?.length == 5 && int.tryParse(text ?? '') != null;
          return isValid;
        },
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(Sizes.p40),
          fieldHeight: Sizes.p48,
          fieldWidth: Sizes.p48,
          selectedFillColor: AppColors.inputBorder,
          inactiveFillColor: AppColors.inputBorder,
          activeFillColor: AppColors.primaryMain,
          activeColor: Colors.transparent,
          selectedColor: Colors.transparent,
          inactiveColor: Colors.transparent,
          errorBorderColor: AppColors.dangerMain,
        ),
        // onChanged: (value) => _currentPin = value,
        // onCompleted: (value) => _onSubmit(code: value),
        // onSubmitted: (value) => _onSubmit(code: value),
      ),
      const Gap(Sizes.p8),
      Align(
        alignment: Alignment.center,
        child: state.isResendLoading
            ? const Center(
                child: SizedBox(
                    height: 20, width: 20, child: CircularProgressIndicator()))
            : _canResend
                ? TextButton(
                    onPressed: () {
                      context
                          .read<OtpCubit>()
                          .sendOtp(VerifyOtpParams(email: widget.email))
                          .then((value) => startTimer());
                    },
                    child: Text(
                      'Kirim Ulang Kode Verifikasi',
                      style: context.bodyMedium?.semiBold.toColor(
                        AppColors.primaryMain,
                      ),
                    ))
                : Text(
                    'Kirim ulang kode dalam $_start detik',
                    style: context.bodyMedium?.semiBold.toColor(
                      AppColors.white,
                    ),
                  ),
      ),
      const Gap(Sizes.p8),
    ];
  }

  OtpNumpadWidget _numpadSection() {
    return OtpNumpadWidget(
      controller: _pinController,
    );
  }

  Widget _header(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.bnextLogo,
          height: 100,
        ),
        const Gap(Sizes.p20),
        Text(
          'Kode OTP Sudah Dikirim',
          style: context.titleMedium?.bold.toColor(AppColors.white),
          textAlign: TextAlign.center,
        ),
        const Gap(Sizes.p40),
      ],
    );
  }

  _navigateHome(BuildContext context) {
    final otpText = _pinController.text.trim();

    if (otpText.isEmpty || int.tryParse(otpText) == null) {
      print('OTP harus angka yang valid');
      return;
    }

    context.read<OtpCubit>().verifyOtp(
          VerifyOtpParams(
            email: widget.email,
            otp: int.parse(otpText),
          ),
        );
  }
}
