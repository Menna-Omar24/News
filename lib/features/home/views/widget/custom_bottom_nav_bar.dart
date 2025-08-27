import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/widgets/custom_svg_wrapper.dart';
import '../../cubit/bottom_nav/bottom_nav_cubit.dart';
import '../../cubit/bottom_nav/bottom_nav_state.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        var cubit = BottomNavCubit.get(context);
        return ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color.fromRGBO(252, 233, 238, 0.8),
            elevation: 0,
            selectedItemColor: AppColor.blackLight,
            unselectedItemColor: AppColor.grey,
            selectedFontSize: 10.sp,
            unselectedFontSize: 10.sp,
            selectedLabelStyle: AppTextStyle.fs12Fw600Cw,
            unselectedLabelStyle: AppTextStyle.fs14Fw400Cg,
            currentIndex: cubit.currentIndex,
            onTap: (index) => cubit.changeIndex(index),
            items: [
              BottomNavigationBarItem(
                icon: CustomSvgWrapper(svgPath: AppAssets.homeTab),
                label: AppString.home,
              ),
              BottomNavigationBarItem(
                icon: CustomSvgWrapper(svgPath: AppAssets.explore),
                label: AppString.explore,
              ),
              BottomNavigationBarItem(
                icon: CustomSvgWrapper(svgPath: AppAssets.bookmarkTab),
                label: AppString.bookMark,
              ),
              BottomNavigationBarItem(
                icon: CustomSvgWrapper(svgPath: AppAssets.weather),
                label: AppString.weather,
              ),
            ],
          ),
        );
      },
    );
  }
}
