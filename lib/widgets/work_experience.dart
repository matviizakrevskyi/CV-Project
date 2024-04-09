import 'package:cv_project/styling.dart';
import 'package:cv_project/texts.dart';
import 'package:flutter/material.dart';

class WorkExperience extends StatelessWidget {
  final VoidCallback onButton;

  const WorkExperience({super.key, required this.onButton});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          workTitle,
          style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          workSubtitle,
          style: CustomTextSyles.mainBold,
        ),
        Text(
          workDate,
          style: CustomTextSyles.main.copyWith(fontSize: 14),
        ),
        const SizedBox(
          height: 8,
        ),
        TextButton(
          onPressed: onButton,
          child: const Text(
            workLink,
            style: CustomTextSyles.main,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        RichText(
            text: const TextSpan(
                text: workTextPartOne,
                style: CustomTextSyles.mainBold,
                children: [TextSpan(text: workTextPartTwo, style: CustomTextSyles.main)])),
        const SizedBox(
          height: 6,
        ),
        RichText(
            text: const TextSpan(
                text: "$workResponsibilitiesTitle: ",
                style: CustomTextSyles.mainBold,
                children: [TextSpan(text: workResponsibilities, style: CustomTextSyles.main)])),
        const SizedBox(
          height: 6,
        ),
        RichText(
            text: const TextSpan(
                text: "$projectsTools: ",
                style: CustomTextSyles.mainBold,
                children: [TextSpan(text: workTools, style: CustomTextSyles.main)])),
      ],
    );
  }
}
