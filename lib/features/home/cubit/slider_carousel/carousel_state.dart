abstract class CarouselState {}

class CarouselInitial extends CarouselState {}

class CarouselChanged extends CarouselState {
  final int index;

  CarouselChanged(this.index);
}
