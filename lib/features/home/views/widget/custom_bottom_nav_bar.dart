import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:news/core/utils/app_padding.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../cubit/bottom_nav/bottom_nav_cubit.dart';
import '../../cubit/bottom_nav/bottom_nav_state.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        var cubit = BottomNavCubit.get(context);
        return Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(252, 233, 238, 0.8),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r),
              topRight: Radius.circular(24.r),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(20),
                blurRadius: 10,
              ),
            ],
          ),
          child: Padding(
            padding: AppPadding.paddingH32V16,
            child: GNav(
              selectedIndex: cubit.currentIndex,
              onTabChange: (index) => cubit.changeIndex(index),
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[200]!,
              haptic: true,
              tabBorderRadius: 24,
              curve: Curves.easeOutExpo,
              duration: const Duration(milliseconds: 500),
              gap: 6,
              color: AppColor.blackLight,
              activeColor: AppColor.white,
              iconSize: 24,
              textStyle: AppTextStyle.fs12Fw600Cw,
              tabBackgroundColor: AppColor.blackLight,
              padding: AppPadding.paddingH16V12,
              tabs: const [
                GButton(icon: LineIcons.home, text: AppString.home),
                GButton(icon: LineIcons.compass, text: AppString.explore),
                GButton(icon: LineIcons.bookmark, text: AppString.bookMark),
                GButton(icon: LineIcons.cloud, text: AppString.weather),
              ],
            ),
          ),
        );
      },
    );
  }
}
