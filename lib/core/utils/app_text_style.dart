import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';

abstract class AppTextStyle {
  static final TextStyle fs20Fw600Cw = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.white,
  );
  static final TextStyle fs16fw500Cw = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColor.white,
  );
  static final TextStyle fs14fw400Cw = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.white,
  );

  static final TextStyle fs18Fw400Cg = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.grey,
  );
  static final TextStyle fs14Fw400Cg = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.grey,
  );
  static final TextStyle fs14Fw700Cg = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColor.grey,
  );
  static final TextStyle fs32Fw600CBl = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.blackLight,
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
  );
}
