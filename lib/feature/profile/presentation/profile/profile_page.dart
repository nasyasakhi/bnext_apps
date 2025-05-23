import 'package:bnext/feature/shared/domain/domain.dart';
import 'package:bnext/feature/shared/presentation/profile/cubit/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:bnext/config/config.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bnext/libraries/libraries.dart';
import 'package:bnext/feature/shared/domain/usecase/logout_use_case.dart';
import 'package:bnext/feature/shared/presentation/profile/cubit/cubit.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();

//   @override
//   Widget wrappedRoute(BuildContext context) {
//  return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) => locator<UserCubit>(),
//         ),
//         BlocProvider(
//           create: (context) => locator<UserLoginCubit>(),
//         ),
//       ],
//       child: this,
//     );
//   }
}

class _ProfilePageState extends State<ProfilePage> {
  // UserCubit? userCubt;

  @override
  void initState() {
    // userCubt = context.read<UserCubit>();
    super.initState();
  }
@override
Widget build(BuildContext context) {
  return CustomScaffold(
      appBar: const PrimaryAppBar(
        title: 'Profile Page',
      ),
    body: BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {},
      buildWhen: (previous, current) => current.user != null,
      builder: (context, state) {
        final user = state.user;
        return RefreshIndicator(
          onRefresh: () async => fetchUser(),
          child: SingleChildScrollView(
            child: CustomColumn(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _buildProfileHeader(user),
                      const Gap(Sizes.p8),
                      const Divider(
                        color: AppColors.white,
                        thickness: 0.5,
                      ),
                    ],
                  ),
                ),
                _buildQuickStatsRow(),
                const Gap(Sizes.p56),
                _buildMenuItems(),
                const Gap(Sizes.p56),
                _buildLogoutButton(context),
                const Gap(Sizes.p32),
              ],
            ),
          ),
        );
      },
    ),
  );
}

Widget _buildProfileHeader(UserEntity? user) {
  return GestureDetector(
    onTap: () => context.router.push(const ProfileEditRoute()),
    child: Row(
      children: [
        Container(
          width: 110,
          height: 110,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(AppImages.avatarPlaceholder),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Gap(Sizes.p32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user?.username ?? '',
              style: context.titleMedium?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              user?.email ?? '',
              style: context.labelMedium?.copyWith(
                color: AppColors.white,
              ),
            ),
            const Gap(Sizes.p16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppIcons.vipIcon,
                  height: 30,
                ),
                const Gap(Sizes.p8),
                Flexible(
                  child: Text(
                    'VIP',
                    style: context.labelLarge?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildQuickStatsRow() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      children: [
        _buildStatItem(AppIcons.walletIcon, 'Dompet Saya', '0'),
        const Gap(Sizes.p32),
        _buildStatItem(AppIcons.rewardIcon, 'Poin Saya', '0'),
      ],
    ),
  );
}

  Widget _buildStatItem(String icon, String label, String value) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Image.asset(
              icon,
              color: AppColors.white,
              height: 18,
            ),
            const Gap(Sizes.p8),
            Text(
              label,
              style: context.bodySmall?.copyWith(
                color: AppColors.white,
              ),
            ),
            const Spacer(),
            Text(
              value,
              style: context.bodySmall?.copyWith(
                color: AppColors.white,
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: AppColors.white,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItems() {
    final menuItems = [
      {
        'icon': AppIcons.historyTransactionIcon, 
        'title': context.appLang.transactionHistory,
      },
      {
        'icon': AppIcons.partnershipIcon,
        'title': context.appLang.joinPartnership,
      },
      {'icon': AppIcons.promoIcon, 'title': 'Promo'},
      {
        'icon': AppIcons.paymentIcon,
        'title': context.appLang.paymentMethods,
        'onTap': () {
          context.router.push(const PaymentMethodRoute());
        }
      },
      {'icon': AppIcons.helpdeskIcon, 
       'title': context.appLang.helpCenter,
       'onTap': () {
          context.router.push(const HelpCenterRoute());
        }
       },
      {
        'icon': AppIcons.settingsIcon,
        'title': context.appLang.appSettings,
        'onTap': () {
          context.router.push(const SettingsAppRoute());
        }
      },
      {
        'icon': AppIcons.languageIcon,
        'title': context.appLang.language,
        'onTap': () {
          context.router.push(const LanguageRoute());
        }
      },
    ];

    return Column(
      children: menuItems
          .map((item) => _buildMenuItem(item['icon'] as String,
              item['title'] as String, item['onTap'] as VoidCallback?))
          .toList(),
    );
  }

  Widget _buildMenuItem(String icon, String title, VoidCallback? onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: AppColors.backGroundSecondary,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: AppColors.primary3)),
          child: Row(
            children: [
              Image.asset(icon, height: 24),
              const Gap(Sizes.p16),
              Text(
                title,
                style: context.bodyMedium?.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const Icon(
                Icons.chevron_right,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: SecondaryButton(
        width: double.infinity,
        text: 'Logout',
        onPressed: () async {
          await locator<LogoutUseCase>().call(NoParams());
          context.router.pushAndPopUntil(
            const PreloginRoute(),
            predicate: (_) => false,
          );
        },
        backgroundColor: AppColors.backGroundSecondary,
        borderColor: AppColors.white,
        borderWidth: 1,
      ),
    );
  }

  void fetchUser() async {
    context.read<UserCubit>().getUser();
  }
}