import 'package:bnext/feature/profile/presentation/profile/components/profile_section.dart';
import 'package:bnext/feature/shared/presentation/profile/cubit/user_cubit.dart';
import 'package:bnext/libraries/components/wrapper/custom_wrapper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

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
      body: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {},
        buildWhen: (previous, current) => current.user != null,
        builder: (context, state) {
          final user = state.user;
          return RefreshIndicator(
            onRefresh: () async => fetchUser(),
            child: SingleChildScrollView(
              child: ProfileSection(user: user),
            ),
          );
        },
      ),
    );
  }

  void fetchUser() async {
    context.read<UserCubit>().getUser();
  }
}