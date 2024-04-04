import 'package:cv_project/styling.dart';
import 'package:flutter/material.dart';

class ProjectsTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 160,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MY PROJECTS",
              overflow: TextOverflow.ellipsis,
              style: CustomTextSyles.h3.copyWith(letterSpacing: 8),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "for self-development",
              style: CustomTextSyles.h4.copyWith(letterSpacing: 6),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 220, right: 220),
          child: Divider(
            thickness: 1.5,
            color: CustomColors.divider,
          ),
        ),
        const SizedBox(
          height: 200,
        ),
      ],
    );
  }
}
