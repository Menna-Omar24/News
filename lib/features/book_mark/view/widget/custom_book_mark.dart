import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_text_style.dart';

class CustomBookMark extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const CustomBookMark({super.key, required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 238.w,
              child: Text(title, style: AppTextStyle.fs18Fw600CB,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(subtitle, style: AppTextStyle.fs12Fw400Cg),
          ],
        ),
        Image.asset(image),
      ],
    );
  }
}
