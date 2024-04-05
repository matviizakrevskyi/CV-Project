import 'dart:async';

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
    UrlLauncherPlugin().launch("https://eleviate.io/");
  }

  onGitHubProject() {
    UrlLauncherPlugin().launch("https://github.com/matviizakrevskyi/GitHub-Api-Project");
  }

  onMessangerProject() {
    UrlLauncherPlugin().launch("https://github.com/matviizakrevskyi/Flutter-Messenger");
  }

  onCVProject() {
    UrlLauncherPlugin().launch("https://github.com/matviizakrevskyi/CV-Project");
  }
}
