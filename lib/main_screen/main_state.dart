part of 'main_cubit.dart';

class MainState {
  final MainScreens screen;
  final double animationOpacity;

  MainState(this.screen, this.animationOpacity);

  MainState copyWith({MainScreens? screen, double? animationOpacity}) =>
      MainState(screen ?? this.screen, animationOpacity ?? this.animationOpacity);
}
