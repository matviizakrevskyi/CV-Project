import 'package:cv_project/styling.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   "CONTACT",
        //   style: CustomTextSyles.h5.copyWith(letterSpacing: 6),
        // ),
        SizedBox(
          height: 16,
        ),
        Text(
          "matvii.zakrevskyi@gmail.com",
          style: CustomTextSyles.main,
        ),
      ],
    );
  }
}
