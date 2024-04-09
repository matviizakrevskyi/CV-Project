import 'package:cv_project/styling.dart';
import 'package:cv_project/texts.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class EducationAndLanguagesWidget extends StatelessWidget {
  const EducationAndLanguagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EducationWidget(),
              const SizedBox(
                height: 46,
              ),
              Divider(
                thickness: 1.5,
                color: CustomColors.divider,
              ),
              const SizedBox(
                height: 16,
              ),
              LanguagesWidget()
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [EducationWidget(), LanguagesWidget()],
          );
  }
}

class EducationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          educationTitle,
          style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          educationSubtitle,
          style: CustomTextSyles.h5,
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          educationPlace,
          style: CustomTextSyles.mainBold,
        ),
        const Text(
          educationDate,
          style: CustomTextSyles.main,
        )
      ],
    );
  }
}

class LanguagesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          languagesTitle,
          style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
        ),
        const SizedBox(
          height: 8,
        ),
        RichText(
          text: const TextSpan(
            text: languagesEnglish,
            style: CustomTextSyles.mainBold,
            children: [TextSpan(text: " - $languagesEnglishValue", style: CustomTextSyles.main)],
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        RichText(
          text: const TextSpan(
            text: languagesPolish,
            style: CustomTextSyles.mainBold,
            children: [TextSpan(text: " - $languagesPolishValue", style: CustomTextSyles.main)],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        RichText(
          text: const TextSpan(
            text: languagesUkrainian,
            style: CustomTextSyles.mainBold,
            children: [TextSpan(text: " - $languagesUkrainianValue", style: CustomTextSyles.main)],
          ),
        )
      ],
    );
  }
}
