part of 'main_cubit.dart';

class MainState {
  final MainScreens screen;

  MainState(this.screen);

  MainState copyWith(MainScreens? screen) => MainState(screen ?? this.screen);
}
