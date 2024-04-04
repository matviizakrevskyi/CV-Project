import 'package:cv_project/main_screen/main_cubit.dart';
import 'package:cv_project/main_screen/main_screen_enum.dart';
import 'package:cv_project/main_screen/responsive_widgets/desktop_widget.dart';
import 'package:cv_project/main_screen/responsive_widgets/mobile_widget.dart';
import 'package:cv_project/main_screen/responsive_widgets/tablet_widget.dart';
import 'package:cv_project/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MainCubit>();
    return Scaffold(
      body: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                AppBarWidget(
                    screen: state.screen,
                    onMain: () => cubit.onMain(),
                    onProjects: () => cubit.onProjects()),
                AnimatedOpacity(
                  opacity: state.animationOpacity,
                  duration: Duration(milliseconds: state.animationOpacity == 0 ? 0 : 800),
                  child: Column(
                    children: [
                      if (ResponsiveBreakpoints.of(context).isMobile)
                        MobileWidget(
                          screen: state.screen,
                        ),
                      if (ResponsiveBreakpoints.of(context).isTablet)
                        TabletWidget(
                          screen: state.screen,
                        ),
                      if (ResponsiveBreakpoints.of(context).isDesktop)
                        DesktopWidget(
                          screen: state.screen,
                        )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  final MainScreens screen;
  final VoidCallback onMain;
  final VoidCallback onProjects;

  const AppBarWidget(
      {super.key, required this.screen, required this.onMain, required this.onProjects});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onMain,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: screen == MainScreens.main
                    ? const BorderSide(color: CustomColors.textPrimaryColor, width: 2)
                    : const BorderSide(color: CustomColors.main, width: 1),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
              child: Text(
                "Main",
                style: CustomTextSyles.h4,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: onProjects,
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: screen == MainScreens.projects
                    ? const BorderSide(color: CustomColors.textPrimaryColor, width: 2)
                    : const BorderSide(color: CustomColors.main, width: 1),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
              child: Text(
                "Projects",
                style: CustomTextSyles.h4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
