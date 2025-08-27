import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/utils/app_assets.dart';
import 'package:news/core/utils/app_color.dart';
import 'package:news/core/utils/app_padding.dart';
import 'package:news/core/utils/app_text_style.dart';

import '../../../core/helper/navigation.dart';
import '../../../core/utils/app_route.dart';
import '../../../core/utils/app_string.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../../search_map/views/search_map_view.dart';

class LetsStartView extends StatelessWidget {
  static const String id = AppRoute.letsStart;

  const LetsStartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: AlignmentDirectional.topStart,
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [(AppColor.blue), AppColor.lightWhite],
              ),
            ),
            child: Image.asset(
              AppAssets.bg,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32.r),
                  topLeft: Radius.circular(32.r),
                ),
              ),
              child: Padding(
                padding: AppPadding.paddingTop52,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      AppString.titleLetsStart,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.fs32Fw600CBl,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      AppString.desLetsStart,
                      style: AppTextStyle.fs18Fw400Cg,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 24.h),
                    CustomElevatedButton(
                      onPressed: () {
                        Navigation.goTo(
                          context,
                          SearchMapView(),
                          type: NavigationType.pushReplacement,
                        );
                      },
                      textEleBtn: AppString.explore,
                      svgPath: AppAssets.arrow,
                    ),
                    SizedBox(height: 89.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
