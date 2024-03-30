import 'package:cv_project/styling.dart';
import 'package:flutter/material.dart';

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
