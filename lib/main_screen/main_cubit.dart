import 'dart:async';

import 'package:cv_project/constants.dart';
import 'package:cv_project/main_screen/main_screen_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher_web/url_launcher_web.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState(MainScreens.main, 1));

  onMain() {
    emit(state.copyWith(animationOpacity: 0));

    Timer(const Duration(milliseconds: 10), () {
      emit(state.copyWith(animationOpacity: 1, screen: MainScreens.main));
    });
  }

  onProjects() {
    emit(state.copyWith(animationOpacity: 0));

    Timer(const Duration(milliseconds: 10), () {
      emit(state.copyWith(animationOpacity: 1, screen: MainScreens.projects));
    });
  }

  onEleviate() {
    UrlLauncherPlugin().launch(linkEleviate);
  }

  onGitHubProject() {
    UrlLauncherPlugin().launch(linkFirstProject);
  }

  onMessangerProject() {
    UrlLauncherPlugin().launch(linkSecondProject);
  }

  onCVProject() {
    UrlLauncherPlugin().launch(linkThirdProject);
  }
}
