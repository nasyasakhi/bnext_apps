import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/router/app_router.dart';
import 'package:bnext/libraries/components/components.dart';
import 'package:flutter/material.dart';
import 'package:bnext/libraries/libraries.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(const Duration(seconds: 5), () {
  //     if (mounted) {
  //      _navigateToLandingPage(context);
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Center(
        child: Text('data'),
        // child: Image.asset(
        //   AppImages.bnextLogo,
        //   width: MediaQuery.of(context).size.width * 0.8,
        // ),
      ),
    );
  }
  
  void _navigateToLandingPage(BuildContext context) {
    context.router.push(const PreloginRoute());
  }
}

