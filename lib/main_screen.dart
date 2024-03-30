import 'package:cv_project/styling.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
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
        ),
      ),
    );
  }
}

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ABOUT ME",
          style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "As an enthusiastic student hailing from Krakow, I bring forth practical experience and unwavering dedication as a Flutter developer. My motivation stems from a genuine love for Flutter, and I am eager to further develop my skills in this dynamic field.",
          style: CustomTextSyles.main,
        )
      ],
    );
  }
}

class HardSkillsWidget extends StatelessWidget {
  final List<String> skills = [
    "Good knowledge in Flutter and Dart(1+ year experience)",
    "Knowledge of Dart libraries, such as: BLoC, Dio, Hive, RXDart, Freezed, GetIt, injector",
    "OOP, SOLID, Design patterns",
    "Databases: SQL NoSQL",
    "Experience with clean architecture",
  ];
  HardSkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "HARD SKILLS",
          style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 120,
          child: Expanded(
            child: ListView.builder(
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  final item = skills[index];
                  return SkillsItem(text: item);
                }),
          ),
        )
      ],
    );
  }
}

class SkillsItem extends StatelessWidget {
  final String text;

  const SkillsItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Icon(
            Icons.circle,
            size: 10,
            color: CustomColors.textPrimaryColor,
          ),
        ),
        Text(
          text,
          style: CustomTextSyles.main,
        ),
      ],
    );
  }
}

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "WORK EXPERIENCE",
          style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "Junior Mobile Developer, Eleviate, Warsaw",
          style: CustomTextSyles.mainBold,
        ),
        Text(
          "June 2023 - February 2024",
          style: CustomTextSyles.main.copyWith(fontSize: 14),
        ),
        const SizedBox(
          height: 8,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "eleviate.io",
            style: CustomTextSyles.main,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        RichText(
            text: const TextSpan(text: "Eleviate", style: CustomTextSyles.mainBold, children: [
          TextSpan(
              text:
                  " is a fitness app where users can create fitness plans or use ready-made ones for sports. The project also has a Mindfulness part with great meditations.",
              style: CustomTextSyles.main)
        ])),
        const SizedBox(
          height: 6,
        ),
        RichText(
            text: const TextSpan(
                text: "Responsibilities on the project:",
                style: CustomTextSyles.mainBold,
                children: [
              TextSpan(
                  text: " creating new features, improving existing ones and fixing bugs.",
                  style: CustomTextSyles.main)
            ])),
        const SizedBox(
          height: 6,
        ),
        RichText(
            text: const TextSpan(
                text: "Tools and Technologies:",
                style: CustomTextSyles.mainBold,
                children: [
              TextSpan(
                  text:
                      " Dart, Flutter, Bloc, Freezed, Dio, Git, VS Code, Android Studio,  SQL and NoSQL, GetIt with Injector, Shared Preferences, GraphQL, Jira",
                  style: CustomTextSyles.main)
            ])),
      ],
    );
  }
}

class EducationAndLanguagesWidget extends StatelessWidget {
  const EducationAndLanguagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "EDUCATION",
              style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Bachelor of Engineering in Computer Science",
              style: CustomTextSyles.h5,
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "WSEI Krakow",
              style: CustomTextSyles.mainBold,
            ),
            const Text(
              "October 2020 - Present",
              style: CustomTextSyles.main,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "LANGUAGES",
              style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
            ),
            const SizedBox(
              height: 8,
            ),
            RichText(
              text: const TextSpan(
                text: "English",
                style: CustomTextSyles.mainBold,
                children: [TextSpan(text: " - B1", style: CustomTextSyles.main)],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            RichText(
              text: const TextSpan(
                text: "Polish",
                style: CustomTextSyles.mainBold,
                children: [TextSpan(text: " - B2", style: CustomTextSyles.main)],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            RichText(
              text: const TextSpan(
                text: "Ukrainian",
                style: CustomTextSyles.mainBold,
                children: [TextSpan(text: " - native", style: CustomTextSyles.main)],
              ),
            )
          ],
        )
      ],
    );
  }
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "CONTACT",
          style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "matvii.zakrevskyi@gmail.com",
          style: CustomTextSyles.main,
        ),
      ],
    );
  }
}

class GitHubApiWidget extends StatelessWidget {
  const GitHubApiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "GitHub API Project",
          style: CustomTextSyles.h5.copyWith(letterSpacing: 2),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "It's a simple app that uses the GitHub API. It allows you to search for repositories and add them to your favorites list. The search works by repository name. There are only two screens in the project, HomeScreen, where you can search for repositories, and FavoritesScreen, where you can see your favorite repositories. The repositories that were found last are saved, so if you enter the app again, the main screen will not be empty, but the last found repositories will be displayed as history. Similarly, all your favorite repositories are also saved. This all works with Hive DB, all repositories are stored in this local database. For state management, I used the BLoC library, specifically Cubit. I also used such design patterns in the project as: Dependency Injection, Singleton, Repository.",
          style: CustomTextSyles.main,
        ),
      ],
    );
  }
}

class FlutterMessengerWidget extends StatelessWidget {
  const FlutterMessengerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Flutter Messenger",
          style: CustomTextSyles.h5.copyWith(letterSpacing: 2),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "This is a messenger application in which almost all features were implemented using Google's Firebase. Registration and logging work with Firebase Authentication. As soon as the user logs in, he can find other users by their emails and start a chat with them, after which this chat will be added to all the user's chats. The main screen contains a list of all chats. All data is stored in the Firebase Realtime Database. For this project, I chose Firebase Realtime Database because it is very convenient and has such cool features as listening to changes in a particular group, which allowed me to implement this project very easily",
          style: CustomTextSyles.main,
        ),
      ],
    );
  }
}
