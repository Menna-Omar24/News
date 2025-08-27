abstract class BottomNavState {}

class BottomNavInitialState extends BottomNavState {}

class BottomNavChangeState extends BottomNavState {
  final int index;

  BottomNavChangeState(this.index);
}
