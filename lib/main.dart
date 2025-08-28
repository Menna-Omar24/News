import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/theme/app_theme.dart';
import 'features/book_mark/view/book_mark_view.dart';
import 'features/explore_view/views/explore_view.dart';
import 'features/explore_view/views/search_view.dart';
import 'features/home/views/article_view.dart';
import 'features/home/views/home_view.dart';
import 'features/home/views/main_view.dart';
import 'features/lets_start/views/lets_start_view.dart';
import 'features/lets_start/views/splash_view.dart';
import 'features/search_map/views/search_map_view.dart';
import 'features/weather_view/views/weather_view.dart';

void main() {
  runApp(News());
}

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.isLightTheme,
        initialRoute: SplashView.id,
        routes: {
          SplashView.id: (_) => SplashView(),
          LetsStartView.id: (_) => LetsStartView(),
          SearchMapView.id: (_) => SearchMapView(),
          MainView.id: (_) => MainView(),
          ExploreView.id: (_) => ExploreView(),
          WeatherView.id: (_) => WeatherView(),
          BookMarkView.id: (_) => BookMarkView(),
          ArticleView.id: (_) => ArticleView(),
          HomeView.id: (_) => HomeView(),
          SearchView.id: (_) => SearchView(),
        },
        home: SplashView(),
      ),
    );
  }
}
