import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_color.dart';
import '../utils/app_padding.dart';
import '../utils/app_text_style.dart';
import 'custom_svg_wrapper.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String textEleBtn;
  final String? svgPath;

  const CustomElevatedButton({
    super.key,
    required this.textEleBtn,
    this.svgPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ElevatedButton.icon(
          label: Text(textEleBtn, style: AppTextStyle.fs20Fw600Cw),
          icon: svgPath != null
              ? CustomSvgWrapper(svgPath: svgPath!)
              : const SizedBox.shrink(),
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: AppPadding.paddingH24V16,
            backgroundColor: AppColor.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(128.r),
            ),
          ),
        ),
      ),
    );
  }
}
