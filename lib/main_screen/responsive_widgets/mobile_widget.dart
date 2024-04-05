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

class MobileWidget extends StatelessWidget {
  final MainScreens screen;

  const MobileWidget({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 64,
                child: screen == MainScreens.main
                    ? _MobileMainScreenWidget()
                    : _MobileProjectsScreenWidget(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _MobileMainScreenWidget extends StatelessWidget {
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
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 46),
          child: WorkExperience(),
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

class _MobileProjectsScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectsTitleWidget(),
        //GitHub API
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 46),
          child: GitHubApiWidget(),
        ),
        Divider(
          thickness: 1.5,
          color: CustomColors.divider,
        ),
        //Flutter Messenger
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 46),
          child: FlutterMessengerWidget(),
        ),
        Divider(
          thickness: 1.5,
          color: CustomColors.divider,
        ),
        //CV
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 46),
          child: CvProjectWidget(),
        ),
      ],
    );
  }
}
