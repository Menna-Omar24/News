import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/utils/app_assets.dart';
import 'package:news/core/utils/app_color.dart';
import 'package:news/core/utils/app_padding.dart';
import 'package:news/core/utils/app_string.dart';
import 'package:news/core/utils/app_text_style.dart';
import 'package:news/core/widgets/custom_svg_wrapper.dart';
import 'package:news/features/explore_view/views/search_view.dart';
import 'package:news/features/explore_view/views/widget/custom_explore.dart';
import '../../../core/utils/app_route.dart';

class ExploreView extends StatelessWidget {
  static const String id = AppRoute.explore;

  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> cardListExplore = [
      CustomExplore(
        title: AppString.workSpace,
        subtitle: AppString.interior,
        image: AppAssets.bookmark1,
        imageAvatar: AppAssets.avatarExplore,
      ),
      CustomExplore(
        title: AppString.workSpace,
        subtitle: AppString.interior,
        image: AppAssets.bookmark1,
        imageAvatar: AppAssets.avatarExplore,
      ),
      CustomExplore(
        title: AppString.workSpace,
        subtitle: AppString.interior,
        image: AppAssets.bookmark1,
        imageAvatar: AppAssets.avatarExplore,
      ),
      CustomExplore(
        title: AppString.workSpace,
        subtitle: AppString.interior,
        image: AppAssets.bookmark1,
        imageAvatar: AppAssets.avatarExplore,
      ),
      CustomExplore(
        title: AppString.workSpace,
        subtitle: AppString.interior,
        image: AppAssets.bookmark1,
        imageAvatar: AppAssets.avatarExplore,
      ),
      CustomExplore(
        title: AppString.workSpace,
        subtitle: AppString.interior,
        image: AppAssets.bookmark1,
        imageAvatar: AppAssets.avatarExplore,
      ),
      CustomExplore(
        title: AppString.workSpace,
        subtitle: AppString.interior,
        image: AppAssets.bookmark1,
        imageAvatar: AppAssets.avatarExplore,
      ),
      CustomExplore(
        title: AppString.workSpace,
        subtitle: AppString.interior,
        image: AppAssets.bookmark1,
        imageAvatar: AppAssets.avatarExplore,
      ),
      CustomExplore(
        title: AppString.workSpace,
        subtitle: AppString.interior,
        image: AppAssets.bookmark1,
        imageAvatar: AppAssets.avatarExplore,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: AppPadding.paddingH32V24,
          child: Text(AppString.explore, style: AppTextStyle.fs32Fw600CBl),
        ),
        backgroundColor: AppColor.lightWhite,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, SearchView.id);
            },
            child: CustomSvgWrapper(svgPath: AppAssets.search),
          ),
          SizedBox(width: 32.w),
        ],
      ),
      body: SingleChildScrollView(
        padding: AppPadding.paddingH32V24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppAssets.explore),
            SizedBox(height: 16.h),
            Text(AppString.uncovering, style: AppTextStyle.fs24Fw600CBl),
            SizedBox(height: 12.h),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.avatarExplore),
                  radius: 16.r,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Mr. Lana Kub . May 1, 2023',
                  style: AppTextStyle.fs12Fw400Cg,
                ),
              ],
            ),
            SizedBox(height: 26.h),
            ListView.separated(
              itemBuilder: (context, index) => cardListExplore[index],
              separatorBuilder: (context, index) => SizedBox(height: 24.h),
              itemCount: cardListExplore.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
