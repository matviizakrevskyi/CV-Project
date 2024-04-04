import 'package:cv_project/main_screen/main_cubit.dart';
import 'package:cv_project/main_screen/main_screen.dart';
import 'package:cv_project/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 600, name: MOBILE),
          const Breakpoint(start: 600, end: 1000, name: TABLET),
          const Breakpoint(start: 1000, end: double.infinity, name: DESKTOP),
        ],
      ),
      title: 'Matvii Zakrevskyi Resume',
      theme: ThemeData(
        colorScheme: CustomColors.colorSheme,
        useMaterial3: true,
      ),
      home: BlocProvider<MainCubit>(
        create: (BuildContext context) => MainCubit(),
        child: const MainScreen(),
      ),
    );
  }
}
