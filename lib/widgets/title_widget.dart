import 'package:cv_project/styling.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 54,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MATVII ZAKREVSKYI",
                overflow: TextOverflow.ellipsis,
                style: CustomTextSyles.h1.copyWith(letterSpacing: 8),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FLUTTER DEVELOPER",
                style: CustomTextSyles.h4.copyWith(letterSpacing: 6),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300, right: 300),
            child: Divider(
              thickness: 1.5,
              color: CustomColors.divider,
            ),
          ),
          const SizedBox(
            height: 160,
          ),
        ],
      ),
    );
  }
}
