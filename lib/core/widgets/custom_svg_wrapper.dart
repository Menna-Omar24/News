import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgWrapper extends StatelessWidget {
  final String svgPath;
  final double? height;
  final double? width;

  const CustomSvgWrapper({
    super.key,
    required this.svgPath,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(svgPath, height: height, width: width);
  }
}
