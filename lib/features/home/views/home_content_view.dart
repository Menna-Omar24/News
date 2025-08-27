import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_padding.dart';
import '../../../core/utils/app_string.dart';
import '../../../core/utils/app_text_style.dart';

class HomeContentView extends StatelessWidget {
  const HomeContentView({super.key});

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
        padding: AppPadding.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        Text(
                          AppString.experience,
                          style: AppTextStyle.fs16fw500Cw,
                        ),
                        Text(
                          AppString.lucOlingo,
                          style: AppTextStyle.fs14fw400Cw,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppString.mostPopular, style: AppTextStyle.fs24Fw600CBl),
                Text(AppString.seeMore, style: AppTextStyle.fs16Fw600CBu),
              ],
            ),
            SizedBox(height: 13.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(AppAssets.popular1, fit: BoxFit.cover),
                      Text(
                        AppString.theProsAndConsOfRemoteWork,
                        style: AppTextStyle.fs20Fw600CBl,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        AppString.technology,
                        style: AppTextStyle.fs14Fw400Cg,
                      ),
                    ],
                  ),
                  SizedBox(width: 17.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(AppAssets.popular, fit: BoxFit.cover),
                      Text(
                        AppString.theProsAndConsOfRemoteWork,
                        style: AppTextStyle.fs20Fw600CBl,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        AppString.technology,
                        style: AppTextStyle.fs14Fw400Cg,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
