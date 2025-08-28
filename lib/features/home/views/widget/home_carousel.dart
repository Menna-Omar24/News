import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_string.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../cubit/slider_carousel/carousel_cubit.dart';
import '../../cubit/slider_carousel/carousel_state.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarouselCubit(),
      child: BlocBuilder<CarouselCubit, CarouselState>(
        builder: (context, state) {
          var cubit = CarouselCubit.get(context);
          return Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: CarouselSlider.builder(
                      carouselController:cubit.controller,
                      itemCount: cubit.images.length,
                      itemBuilder: (context, index, realIndex) {
                        return Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              cubit.images[index],
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 274.h,
                            ),
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Color.fromRGBO(0, 0, 0, 0),
                                    Color.fromRGBO(0, 0, 0, 0.3),
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 14,
                                  vertical: 9,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppString.experience,
                                      style: AppTextStyle.fs16fw500Cw,
                                    ),
                                    Text(
                                      AppString.lucOlingo,
                                      style: AppTextStyle.fs14fw400Cw,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      options: CarouselOptions(
                        height: 274,
                        viewportFraction: 1,
                        autoPlay: true,
                        onPageChanged: (index, reason) =>
                            cubit.changeIndex(index),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 19.h),
              AnimatedSmoothIndicator(
                activeIndex: cubit.currentIndex,
                count: cubit.images.length,
                effect: const WormEffect(
                  activeDotColor: AppColor.blue,
                  dotColor: AppColor.greyLight,
                  dotHeight: 9,
                  dotWidth: 9,
                  type: WormType.thin,
                ),
                onDotClicked: (index) =>cubit.controller.animateToPage(index),
              ),
            ],
          );
        },
      ),
    );
  }
}
