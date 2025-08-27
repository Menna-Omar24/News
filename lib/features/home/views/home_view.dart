import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/utils/app_assets.dart';
import 'package:news/core/utils/app_color.dart';
import 'package:news/core/utils/app_padding.dart';
import 'package:news/core/utils/app_string.dart';
import 'package:news/core/utils/app_text_style.dart';

import '../../../core/utils/app_route.dart';

class HomeView extends StatelessWidget {
  static const String id = AppRoute.home;

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 83.h,
        backgroundColor: AppColor.lightWhite,
        title: Padding(
          padding: AppPadding.defaultPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppString.goodMorning, style: AppTextStyle.fs14Fw400Cg),
                  Text('Sun 9 April, 2023', style: AppTextStyle.fs18Fw600CB),
                ],
              ),
              Text('☀️ Sunny 32\u00B0C', style: AppTextStyle.fs14Fw700Cg),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: AppPadding.paddingH32V24,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(AppAssets.home),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.3),
                        Color.fromRGBO(0, 0, 0, 0),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: AppPadding.paddingH14V9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppString.experience,style: AppTextStyle.fs16fw500Cw,),
                        Text(AppString.lucOlingo,style: AppTextStyle.fs14fw400Cw,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
