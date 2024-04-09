import 'package:cv_project/styling.dart';
import 'package:cv_project/texts.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HardSkillsWidget extends StatelessWidget {
  final List<String> skills = hardSkills;

  const HardSkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hardSkillsTitle,
          style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: ResponsiveBreakpoints.of(context).isMobile
              ? skills.length * 38
              : ResponsiveBreakpoints.of(context).isTablet
                  ? skills.length * 26
                  : skills.length * 24,
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
        Expanded(
          child: Text(
            text,
            style: CustomTextSyles.main,
          ),
        ),
      ],
    );
  }
}
