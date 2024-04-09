import 'package:cv_project/styling.dart';
import 'package:cv_project/texts.dart';
import 'package:flutter/material.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          aboutMeTitle,
          style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          aboutMeText,
          style: CustomTextSyles.main,
        )
      ],
    );
  }
}
