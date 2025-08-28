import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';

abstract class AppTextStyle {
  static final TextStyle fs20Fw600Cw = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.white,
    fontFamily: 'Inter',
  );
  static final TextStyle fs12Fw600Cw = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.white,
    fontFamily: 'Inter',
  );
  static final TextStyle fs16fw500Cw = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColor.white,
    fontFamily: 'Inter',
  );
  static final TextStyle fs14fw400Cw = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.white,
    fontFamily: 'Merriweather',
  );

  static final TextStyle fs18Fw400Cg = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.greyBlack,
  );
  static final TextStyle fs14Fw400Cg = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.greyBlack,
    fontFamily: 'Merriweather',
  );

  static final TextStyle fs16Fw400Cbl = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.blackLight,
    fontFamily: 'Merriweather',
  );

  static final TextStyle fs14Fw700Cg = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColor.greyBlack,
    fontFamily: 'Merriweather',
  );
  static final TextStyle fs48Fw700CBl = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w700,
    color: AppColor.blackLight,
    fontFamily: 'Inter',
  );
  static final TextStyle fs16Fw600CBl = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.blackLight,
    fontFamily: 'Inter',
  );
  static final TextStyle fs32Fw600CBl = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
    color: AppColor.blackLight,
  );

  static final TextStyle fs16Fw400CBu = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inter',
    color: AppColor.blue,
  );
  static final TextStyle fs32Fw500CBl = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Inter',
    color: AppColor.blackLight,
  );

  static final TextStyle fs20Fw600CBl = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.blackLight,
    fontFamily: 'Inter',
  );
  static final TextStyle fs17Fw400CB = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.black,
  );
  static final TextStyle fs18Fw600CB = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.black,
    fontFamily: 'Inter',
  );

  static final TextStyle fs24Fw600CBl = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.blackLight,
    fontFamily: 'Inter',
  );

  static final TextStyle fs16Fw600CBu = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.blue,
    fontFamily: 'Inter',
  );

  static final TextStyle fs12Fw400Cg = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.grey,
    fontFamily: 'Inter',
  );
}
