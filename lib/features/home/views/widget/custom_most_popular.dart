import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';

class CustomMostPopular extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const CustomMostPopular({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(image, height: 232.h, width: 242.w, fit: BoxFit.cover)),
        Text(
          title,
          style: AppTextStyle.fs20Fw600CBl,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 5.h),
        Text(subtitle, style: AppTextStyle.fs14Fw400Cg),
      ],
    );
  }
}
