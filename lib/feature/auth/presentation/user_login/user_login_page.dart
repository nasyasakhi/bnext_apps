import 'package:auto_route/auto_route.dart';
import 'package:bnext/feature/shared/presentation/profile/profile.dart';
import '../../params/login_params.dart';
import 'cubit/user_login_cubit.dart';
import 'cubit/user_login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../../../../core/core.dart';
import '../../../../libraries/libraries.dart';

import '../../../../config/config.dart';

@RoutePage()
class UserLoginPage extends StatefulWidget {
  const UserLoginPage({super.key});

  @override
  State<UserLoginPage> createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        // resizeToAvoidBottomInset: false,
        appBar: const PrimaryAppBar(
          enableBackButton: true,
          title: 'Login',
        ),
        body: BlocProvider(
          create: (context) => locator<UserLoginCubit>(),
          child: BlocConsumer<UserLoginCubit, UserLoginState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                success: (user) async {
                  await context.read<UserCubit>().saveUser(user: user);

                  context.router.replaceAll([const MainRoute()]);
                },
                error: (error) => SnackbarHelper.showError(
                    context, error.errorMessage ?? error.readableMessage),
              );
            },
            builder: (context, state) {
              return Form(
                key: _formKey,
                child: AbsorbPointer(
                  absorbing: state.isLoading,
                  child: CustomColumn(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.p40, vertical: Sizes.p24),
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              _header(context),
                              ..._mainSection(context),
                            ],
                          ),
                        ),
                      ),
                      ..._bottomSection(context, state),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
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
          'Selamat Datang Kembali',
          style: context.titleMedium?.bold.toColor(AppColors.white),
          textAlign: TextAlign.center,
        ),
        const Gap(Sizes.p40),
      ],
    );
  }

  List<Widget> _mainSection(BuildContext context) {
    return [
      CustomTextFormField(
        label: 'Nama Pengguna',
        hint: '@nama_pengguna',
        textController: _usernamecontroller,
        validator: (value) {
          return value!.length < 4 ? "Enter min. 4 characters" : null;
        },
      ),
      const Gap(Sizes.p16),
      CustomTextFormField(
        label: 'Kata Sandi',
        hint: 'Harus terdiri dari 8 - 12 karakter',
        isPassword: true,
        textController: _passwordcontroller,
        validator: (value) {
          return value!.length < 6 ? "Enter min. 6 characters" : null;
        },
      ),
      const Gap(Sizes.p4),
      Align(
        alignment: Alignment.topRight,
        child: TextButton(
            onPressed: () {},
            child: Text(
              'Lupa sandi?',
              style: context.bodySmall?.semiBold.toColor(AppColors.primaryMain),
            )),
      ),
      const Gap(Sizes.p16),
    ];
  }

  List<Widget> _bottomSection(BuildContext context, UserLoginState state) {
    return [
      PrimaryButton(
        isLoading: state.isLoading,
        text: 'Masuk',
        width: double.infinity,
        onPressed: () => _navigateToDashboard(context),
      ),
      // const Spacer(),/
      const Gap(Sizes.p32),
      TextButton(
        onPressed: () => context.router.push(const UserRegisterRoute()),
        child: RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
                text: 'Belum punya akun? ',
                style: context.labelMedium,
                children: [
                  TextSpan(
                      text: 'Daftar',
                      style:
                          context.labelMedium?.toColor(AppColors.primaryMain)),
                ])),
      ),
    ];
  }

  void _navigateToDashboard(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<UserLoginCubit>().login(LoginParams(
          email: _usernamecontroller.text,
          password: _passwordcontroller.text));
    }
  }
}
