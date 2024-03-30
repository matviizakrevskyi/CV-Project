import 'package:cv_project/main_screen.dart';
import 'package:cv_project/styling.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: CustomColors.colorSheme,
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}
