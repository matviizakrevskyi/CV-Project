import 'package:cv_project/main_screen/main_cubit.dart';
import 'package:cv_project/main_screen/main_screen_enum.dart';
import 'package:cv_project/styling.dart';
import 'package:cv_project/widgets/about_me_widget.dart';
import 'package:cv_project/widgets/contact_widget.dart';
import 'package:cv_project/widgets/education_languages_widget.dart';
import 'package:cv_project/widgets/hard_skills_widget.dart';
import 'package:cv_project/widgets/projects_title_widget.dart';
import 'package:cv_project/widgets/projects_widgets.dart';
import 'package:cv_project/widgets/title_widget.dart';
import 'package:cv_project/widgets/work_experience.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesktopWidget extends StatelessWidget {
  final MainScreens screen;

  const DesktopWidget({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
                constraints: const BoxConstraints(maxWidth: 800),
                child: screen == MainScreens.main
                    ? _DesktopMainScreenWidget()
                    : _DesktopProjectsScreenWidget()),
          ],
        ),
      ],
    );
  }
}

class _DesktopMainScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(),
        //About me
        Divider(
          thickness: 1.5,
          color: CustomColors.divider,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 46),
          child: AboutMeWidget(),
        ),
        Divider(
          thickness: 1.5,
          color: CustomColors.divider,
        ),
        //Hard Skills
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 46),
          child: HardSkillsWidget(),
        ),
        Divider(
          thickness: 1.5,
          color: CustomColors.divider,
        ),
        //Work Experience
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 46),
          child: WorkExperience(
            onButton: () => context.read<MainCubit>().onEleviate(),
          ),
        ),
        Divider(
          thickness: 1.5,
          color: CustomColors.divider,
        ),
        //Education
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 46),
          child: EducationAndLanguagesWidget(),
        ),
        Divider(
          thickness: 1.5,
          color: CustomColors.divider,
        ),
        //Contact
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 46),
          child: ContactWidget(),
        ),
      ],
    );
  }
}

class _DesktopProjectsScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectsTitleWidget(),
        //GitHub API
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 46),
          child: GitHubApiWidget(
            onTap: () =>  context.read<MainCubit>().onGitHubProject(),
          ),
        ),
        Divider(
          thickness: 1.5,
          color: CustomColors.divider,
        ),
        //Flutter Messenger
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 46),
          child: FlutterMessengerWidget(
            onTap: () => context.read<MainCubit>().onMessangerProject(),
          ),
        ),
        Divider(
          thickness: 1.5,
          color: CustomColors.divider,
        ),
        //CV
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 46),
          child: CvProjectWidget(
            onTap: () => context.read<MainCubit>().onCVProject(),
          ),
        ),
      ],
    );
  }
}
