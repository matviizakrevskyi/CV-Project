import 'package:cv_project/styling.dart';
import 'package:cv_project/widgets/about_me_widget.dart';
import 'package:cv_project/widgets/contact_widget.dart';
import 'package:cv_project/widgets/education_languages_widget.dart';
import 'package:cv_project/widgets/hard_skills_widget.dart';
import 'package:cv_project/widgets/projects_widgets.dart';
import 'package:cv_project/widgets/title_widget.dart';
import 'package:cv_project/widgets/work_experience.dart';
import 'package:flutter/material.dart';

class DesktopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: CustomColors.textPrimaryColor, width: 2),
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
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: CustomColors.textPrimaryColor, width: 2),
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
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
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
              ),
            ),
          ],
        ),
      ],
    );
  }
}
