import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/utils/app_assets.dart';
import 'package:news/core/utils/app_color.dart';
import 'package:news/core/utils/app_route.dart';
import 'package:news/core/utils/app_string.dart';
import 'package:news/core/utils/app_text_style.dart';
import 'package:news/core/widgets/custom_elevated_button.dart';
import 'package:news/core/widgets/custom_svg_wrapper.dart';
import 'package:news/features/home/views/home_view.dart';

import '../../../core/helper/navigation.dart';
import '../../../core/utils/app_padding.dart';

class SearchMapView extends StatelessWidget {
  static const String id = AppRoute.searchMapView;

  const SearchMapView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: AppPadding.paddingH34V46,
                child: TextFormField(
                  controller: searchController,
                  style: AppTextStyle.fs17Fw400CB,
                  decoration: InputDecoration(
                    hintText: 'Ahmed Saber',
                    hintStyle: AppTextStyle.fs17Fw400CB,
                    filled: true,
                    fillColor: AppColor.lightGrey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: IconButton(
                      onPressed: null,
                      icon: CustomSvgWrapper(svgPath: AppAssets.profile),
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Image.asset(AppAssets.googleMap),
                  Positioned(
                    bottom: 28.h,
                    left: 133.w,
                    child: CustomElevatedButton(
                      onPressed: () => Navigation.goTo(
                        context,
                        HomeView(),
                        type: NavigationType.pushAndRemoveUntil,
                      ),
                      textEleBtn: AppString.getStarted,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
