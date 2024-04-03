import 'package:cv_project/main_screen/main_screen_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainState(MainScreens.main));
}
