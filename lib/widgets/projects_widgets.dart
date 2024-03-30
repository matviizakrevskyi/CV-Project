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
