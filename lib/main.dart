import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_13/Core/Features/intro/splash_screen.dart';
import 'package:flutter_application_13/Core/Style/Colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.background),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
