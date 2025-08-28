import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_padding.dart';
import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.lightWhite,
      title: Padding(
        padding: AppPadding.paddingH32V29,
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
            Text('☀️ Sunny 32°C', style: AppTextStyle.fs14Fw700Cg),
          ],
        ),
      ),
    );
  }
}
