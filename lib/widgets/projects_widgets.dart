import 'package:cv_project/styling.dart';
import 'package:cv_project/texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GitHubApiWidget extends StatelessWidget {
  final VoidCallback onTap;

  const GitHubApiWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text: firstProjectTitle,
                style: CustomTextSyles.h5.copyWith(letterSpacing: 2),
                recognizer: TapGestureRecognizer()..onTap = onTap)),
        const SizedBox(
          height: 16,
        ),
        const Text(
          firstProjectPartOne,
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          firstProjectPartTwo,
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          firstProjectPartThree,
          style: CustomTextSyles.main,
        ),
        const SizedBox(height: 12),
        RichText(
            text: const TextSpan(
                text: "$projectsTools: ",
                style: CustomTextSyles.mainBold,
                children: [TextSpan(text: firstProjectTools, style: CustomTextSyles.main)])),
      ],
    );
  }
}

class FlutterMessengerWidget extends StatelessWidget {
  final VoidCallback onTap;

  const FlutterMessengerWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text: secondProjectTitle,
                style: CustomTextSyles.h5.copyWith(letterSpacing: 2),
                recognizer: TapGestureRecognizer()..onTap = onTap)),
        const SizedBox(
          height: 16,
        ),
        const Text(
          secondProjectPartOne,
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          secondProjectPartTwo,
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          secondProjetcPartThree,
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 12,
        ),
        RichText(
            text: const TextSpan(
                text: "$projectsTools: ",
                style: CustomTextSyles.mainBold,
                children: [TextSpan(text: secondProjectTools, style: CustomTextSyles.main)])),
      ],
    );
  }
}

class CvProjectWidget extends StatelessWidget {
  final VoidCallback onTap;

  const CvProjectWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text: thirdProjectTitle,
                style: CustomTextSyles.h5.copyWith(letterSpacing: 2),
                recognizer: TapGestureRecognizer()..onTap = onTap)),
        const SizedBox(
          height: 16,
        ),
        const Text(
          thirdProjectText,
          style: CustomTextSyles.main,
        ),
        const SizedBox(
          height: 12,
        ),
        RichText(
            text: const TextSpan(
                text: "$projectsTools: ",
                style: CustomTextSyles.mainBold,
                children: [TextSpan(text: thirdProjectTools, style: CustomTextSyles.main)])),
      ],
    );
  }
}
