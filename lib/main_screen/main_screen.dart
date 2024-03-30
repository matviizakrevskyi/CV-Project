import 'package:cv_project/main_screen/responsive_widgets/desktop_widget.dart';
import 'package:cv_project/main_screen/responsive_widgets/mobile_widget.dart';
import 'package:cv_project/main_screen/responsive_widgets/tablet_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          if (ResponsiveBreakpoints.of(context).isMobile) MobileWidget(),
          if (ResponsiveBreakpoints.of(context).isTablet) TabletWidget(),
          if (ResponsiveBreakpoints.of(context).isDesktop) DesktopWidget(),
        ],
      )),
    );
  }
}
