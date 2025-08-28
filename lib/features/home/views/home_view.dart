import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/features/home/views/article_view.dart';
import 'package:news/features/home/views/widget/home_carousel.dart';
import 'package:news/features/home/views/widget/custom_app_bar.dart';
import 'package:news/features/home/views/widget/custom_most_popular.dart';

import '../../../core/helper/navigation.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_padding.dart';
import '../../../core/utils/app_route.dart';
import '../../../core/utils/app_string.dart';
import '../../../core/utils/app_text_style.dart';
import '../cubit/slider_carousel/carousel_cubit.dart';

class HomeView extends StatelessWidget {
  static const String id = AppRoute.home;

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> cardList = [
      CustomMostPopular(
        title: AppString.theProsAndConsOfRemoteWork,
        subtitle: AppString.technology,
        image: AppAssets.popular1,
      ),
      CustomMostPopular(
        title: AppString.theProsAndConsOfRemoteWork,
        subtitle: AppString.technology,
        image: AppAssets.article,
      ),
      CustomMostPopular(
        title: AppString.theProsAndConsOfRemoteWork,
        subtitle: AppString.technology,
        image: AppAssets.home,
      ),
      CustomMostPopular(
        title: AppString.theProsAndConsOfRemoteWork,
        subtitle: AppString.technology,
        image: AppAssets.explore,
      ),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocProvider(
              create: (context) => CarouselCubit(),
              child: Padding(
                padding: AppPadding.paddingH32V24,
                child: HomeCarousel(),
              ),
            ),
            Padding(
              padding: AppPadding.paddingH32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppString.mostPopular, style: AppTextStyle.fs24Fw600CBl),
                  TextButton(
                    onPressed: () {
                      Navigation.goTo(
                        context,
                        ArticleView(),
                        type: NavigationType.pushReplacement,
                      );
                    },
                    child: Text(
                      AppString.seeMore,
                      style: AppTextStyle.fs16Fw600CBu,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 313.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: index == 0 ? 32 : 0,
                    end: index == cardList.length - 1 ? 32 : 0,
                  ),
                  child: cardList[index],
                ),
                separatorBuilder: (context, index) => SizedBox(width: 17.h),
                itemCount: cardList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
