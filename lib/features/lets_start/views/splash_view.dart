import 'package:flutter/material.dart';
import 'package:news/core/utils/app_assets.dart';
import 'package:news/core/utils/app_color.dart';
import 'package:news/core/widgets/custom_svg_wrapper.dart';

import '../../../core/helper/navigation.dart';
import '../../../core/utils/app_route.dart';
import 'lets_start_view.dart';

class SplashView extends StatefulWidget {
  static const String id = AppRoute.splash;

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigation.goTo(
        context,
        LetsStartView(),
        type: NavigationType.pushReplacement,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: CustomSvgWrapper(svgPath: AppAssets.logo))],
      ),
    );
  }
}
