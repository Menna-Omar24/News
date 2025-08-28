import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/custom_svg_wrapper.dart';

class WeatherInfoItem extends StatelessWidget {
  final String value;
  final String label;
  final String svgPath;

  const WeatherInfoItem({
    super.key,
    required this.value,
    required this.label,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:  EdgeInsets.only(right: 10),
          child: CustomSvgWrapper(svgPath: svgPath),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(value, style: AppTextStyle.fs16Fw400CBu),
            Text(label, style: AppTextStyle.fs12Fw400Cg),
          ],
        ),
      ],
    );
  }
}
