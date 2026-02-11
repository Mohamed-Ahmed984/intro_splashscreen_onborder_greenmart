import 'package:flutter/material.dart';
import 'package:flutter_application_13/Core/Constant/app_image.dart';
import 'package:flutter_application_13/Core/Features/aut/page/login_screen.dart'
    show LoginScreen;
import 'package:flutter_application_13/Core/Style/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

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
            bottom: 100,
            left: 0,
            right: 0,
            top: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImage.carrot, color: Colors.white),
                const SizedBox(height: 35),
                Text(
                  "Welcome \n to our store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: "Poppins",
                    color: AppColors.background,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "get your groceries in as fast as one hour",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    color: AppColors.background,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: const Size(double.infinity, 60),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: AppColors.background),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
