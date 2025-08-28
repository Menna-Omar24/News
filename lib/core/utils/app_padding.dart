import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppPadding {
  static var defaultPadding = REdgeInsets.symmetric(
    horizontal: 32,
    vertical: 24,
  );

  static var paddingH32V29 = REdgeInsets.symmetric(
    horizontal: 32,
    vertical: 29,
  );

  static var paddingH32 = REdgeInsets.symmetric(
    horizontal: 32,
  );

  static var paddingH32V45 = REdgeInsets.symmetric(
    horizontal: 32,
    vertical: 45,
  );

  static var paddingH32V9 = REdgeInsets.symmetric(
    horizontal: 32,
    vertical: 9,
  );
  static var paddingH14V9 = REdgeInsets.symmetric(horizontal: 14, vertical: 9);
  static var paddingH34V46 = REdgeInsets.symmetric(
    horizontal: 34,
    vertical: 46,
  );
  static var paddingH24V16 = REdgeInsets.symmetric(
    horizontal: 24,
    vertical: 16,
  );
  static var paddingH32V16 = EdgeInsets.symmetric(
    horizontal: 32.w,
    vertical: 16.h,
  );
  static var paddingH16V12 = EdgeInsets.symmetric(
    horizontal: 16.w,
    vertical: 12.h,
  );

  static var paddingH32V24 = REdgeInsets.symmetric(
    horizontal: 32,
    vertical: 24,
  );

  static var paddingTop52 = REdgeInsets.only(top: 52);
  static var paddingTop10 = REdgeInsets.only(top: 10);
}
