import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/cubit/bottom_nav/bottom_nav_state.dart';
import 'package:news/features/home/views/home_content_view.dart';

import '../../views/book_mark_view.dart';
import '../../views/explore_view.dart';
import '../../views/weather_view.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitialState());

  static BottomNavCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  final List<Widget> screens = [
    HomeContentView(),
    ExploreView(),
    WeatherView(),
    BookMarkView(),
  ];
  void changeIndex(int index) {
    currentIndex = index;
    emit(BottomNavChangeState(currentIndex));
  }
}
