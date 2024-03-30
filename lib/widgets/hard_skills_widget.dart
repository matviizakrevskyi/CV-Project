import 'package:cv_project/styling.dart';
import 'package:flutter/material.dart';

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
