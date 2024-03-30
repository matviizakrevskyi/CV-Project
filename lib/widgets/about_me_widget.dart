import 'package:cv_project/styling.dart';
import 'package:flutter/material.dart';

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
