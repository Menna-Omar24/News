import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/cubit/bottom_nav/bottom_nav_state.dart';
import 'package:news/features/home/views/home_view.dart';

import '../../../book_mark/view/book_mark_view.dart';
import '../../../explore_view/views/explore_view.dart';
import '../../../weather_view/views/weather_view.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitialState());

  static BottomNavCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  final List<Widget> screens = [
    HomeView(),
    ExploreView(),
    BookMarkView(),
    WeatherView(),
  ];
  void changeIndex(int index) {
    currentIndex = index;
    emit(BottomNavChangeState(currentIndex));
  }
}
