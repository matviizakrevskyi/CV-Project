import 'package:cv_project/styling.dart';
import 'package:cv_project/widgets/about_me_widget.dart';
import 'package:cv_project/widgets/contact_widget.dart';
import 'package:cv_project/widgets/education_languages_widget.dart';
import 'package:cv_project/widgets/hard_skills_widget.dart';
import 'package:cv_project/widgets/projects_widgets.dart';
import 'package:cv_project/widgets/work_experience.dart';
import 'package:flutter/material.dart';

class DesktopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              const SizedBox(
                height: 54,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "MATVII ZAKREVSKYI",
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextSyles.h1.copyWith(letterSpacing: 8),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "FLUTTER DEVELOPER",
                    style: CustomTextSyles.h4.copyWith(letterSpacing: 6),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  thickness: 1.5,
                  color: CustomColors.divider,
                ),
              ),
              //About me
              const Padding(
                padding: const EdgeInsets.only(left: 52, right: 52, top: 16),
                child: AboutMeWidget(),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  thickness: 1.5,
                  color: CustomColors.divider,
                ),
              ),
              //Hard Skills
              Padding(
                padding: const EdgeInsets.only(left: 52, right: 52, top: 16),
                child: HardSkillsWidget(),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  thickness: 1.5,
                  color: CustomColors.divider,
                ),
              ),
              //Work Experience
              const Padding(
                padding: EdgeInsets.only(left: 52, right: 52, top: 16),
                child: WorkExperience(),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  thickness: 1.5,
                  color: CustomColors.divider,
                ),
              ),
              //GitHub API
              const Padding(
                padding: EdgeInsets.only(left: 52, right: 52, top: 16),
                child: GitHubApiWidget(),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  thickness: 1.5,
                  color: CustomColors.divider,
                ),
              ),
              //Flutter Messenger
              const Padding(
                padding: EdgeInsets.only(left: 52, right: 52, top: 16),
                child: FlutterMessengerWidget(),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  thickness: 1.5,
                  color: CustomColors.divider,
                ),
              ),
              //Education
              const Padding(
                padding: EdgeInsets.only(left: 52, right: 52, top: 16),
                child: EducationAndLanguagesWidget(),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Divider(
                  thickness: 1.5,
                  color: CustomColors.divider,
                ),
              ),
              //Contact
              const Padding(
                padding: EdgeInsets.only(left: 52, right: 52, top: 16),
                child: ContactWidget(),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ],
    );
  }
}
