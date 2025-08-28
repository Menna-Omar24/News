import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_assets.dart';
import 'carousel_state.dart';

class CarouselCubit extends Cubit<CarouselState> {
  CarouselCubit() : super(CarouselInitial());

  static CarouselCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  final List<String> images = [
    AppAssets.home,
    AppAssets.article,
    AppAssets.explore,
  ];

  final CarouselSliderController controller = CarouselSliderController();

  void changeIndex(int index) {
    currentIndex = index;
    emit(CarouselChanged(currentIndex));
  }
}
