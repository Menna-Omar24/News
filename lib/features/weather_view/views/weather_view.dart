import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/utils/app_text_style.dart';
import 'package:news/core/widgets/custom_elevated_button.dart';
import 'package:news/features/home/views/widget/custom_app_bar.dart';
import 'package:news/features/search_map/views/search_map_view.dart';
import 'package:news/features/weather_view/views/widget/weather_info_item.dart';

import '../../../core/helper/navigation.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_padding.dart';
import '../../../core/utils/app_route.dart';
import '../../../core/utils/app_string.dart';
import '../../../core/widgets/custom_svg_wrapper.dart';

class WeatherView extends StatelessWidget {
  static const String id = AppRoute.weather;

  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: AppPadding.paddingH32V29,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cairo - EG', style: AppTextStyle.fs32Fw500CBl),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('27', style: AppTextStyle.fs48Fw700CBl),
                CustomSvgWrapper(svgPath: AppAssets.sunny),
              ],
            ),
            Text('Clear - Clear Sky', style: AppTextStyle.fs32Fw500CBl),
            Text('Feels like 28', style: AppTextStyle.fs16Fw600CBl),
            SizedBox(height: 45.h),
            Padding(
              padding:  EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  WeatherInfoItem(
                    value: '72°',
                    label: 'Fahrenheit',
                    svgPath: AppAssets.fahrenheit,
                  ),

                  WeatherInfoItem(
                    value: '134 mp/h',
                    label: 'Pressure',
                    svgPath: AppAssets.pressure,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.95,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WeatherInfoItem(
                  value: '0.2',
                  label: 'UV Index',
                  svgPath: AppAssets.typcnWeatherSunny,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 8.0),
                  child: WeatherInfoItem(
                    value: '48%',
                    label: 'Humidity',
                    svgPath: AppAssets.mdiWeatherHail,
                  ),
                ),
              ],
            ),
            SizedBox(height: 82.h),
            Center(
              child: CustomElevatedButton(
                textEleBtn: AppString.changeLocation,
                svgPath: AppAssets.location,
                onPressed: () {
                  Navigation.goTo(
                    context,
                    SearchMapView(),
                    type: NavigationType.pushReplacement,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
