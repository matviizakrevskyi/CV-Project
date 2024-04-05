import 'package:cv_project/styling.dart';
import 'package:flutter/material.dart';

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
          height: 16,
        ),
        const Text(
          "This is a simple application that uses the GitHub API. It allows you to search for repositories and add them to your favorites.",
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "The search works by repository name, and I used the Dio library for queries. There are only two screens in the project: HomeScreen, where you can search for repositories, and FavoritesScreen, where you can see your favorite repositories. The repositories that were found last are saved to the local database, so if you log in to the program again, the Home screen will not be empty, but the last repositories found will be displayed as history. Similarly, all your favorite repositories are also saved. This all works with Hive DB, all repositories are stored in this local database. For state management, I used the BLoC library, namely Cubit.",
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "The main goals for this project were to use Hive to store some data, try to implement the Dependency Injection design pattern using the injection and getIt libraries, and write the project in Clean Architecture.",
          style: CustomTextSyles.main,
        ),
        const SizedBox(height: 12),
        RichText(
            text: const TextSpan(
                text: "Tools and Technologies: ",
                style: CustomTextSyles.mainBold,
                children: [
              TextSpan(
                  text: "Dart, Flutter, Bloc, Hive, Dio, GetIt with Injector, Shared Preferences",
                  style: CustomTextSyles.main)
            ])),
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
          height: 16,
        ),
        const Text(
          "I wanted to write a project using Firebase, and given the functionality of Realtime Database, the first thing that came to mind was to make a messenger application.",
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "In total, the project looks very simple, there is a page for authorization, a page with all user chats, a page for searching for users, and a page for the chat with the user. Registration and login work with Firebase Authentication (email and password). All data, such as user data and chat data, is stored in the Realtime Database. I used this particular database because it has the ability to listen to changes in database collections, so it was very easy to implement chat.",
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          "I also used the BLoC library for state management. In the project, I tried to stick to Clean Architecture, so the project is quite easy to read.",
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 12,
        ),
        RichText(
            text: const TextSpan(
                text: "Tools and Technologies: ",
                style: CustomTextSyles.mainBold,
                children: [
              TextSpan(
                  text: "Dart, Flutter, Bloc, Firebase, GetIt with Injector, Shared Preferences",
                  style: CustomTextSyles.main)
            ])),
      ],
    );
  }
}

class CvProjectWidget extends StatelessWidget {
  const CvProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "CV Project",
          style: CustomTextSyles.h5.copyWith(letterSpacing: 2),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "And also this project. I decided to write it in order to try to write a web project in Flutter. In total, this is a very simple project with only two pages. I used the Responsive Framework library in the project to make the project look good on different devices. I used the BLoC library for state management.",
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 12,
        ),
        RichText(
            text: const TextSpan(
                text: "Tools and Technologies: ",
                style: CustomTextSyles.mainBold,
                children: [
              TextSpan(
                  text: "Dart, Flutter, Bloc, Responsive Framework",
                  style: CustomTextSyles.main)
            ])),
      ],
    );
  }
}
