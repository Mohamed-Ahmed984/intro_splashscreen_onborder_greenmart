import 'package:flutter/material.dart';
import 'package:flutter_application_13/Core/Constant/app_image.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImage.welcome,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            bottom: 75,
            left: 0,
            right: 0,
            top: 0,
            child: Column(
              children: [
                Image.asset(AppImage.carrot),
                SizedBox(height: 35),
                Text(
                  "Welcome \n t Green market",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
