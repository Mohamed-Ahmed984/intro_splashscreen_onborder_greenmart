import 'package:flutter/material.dart';
import 'package:flutter_application_13/Core/Constant/app_image.dart';
import 'package:flutter_application_13/Core/Style/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(AppImage.carrot),
              ),
              const SizedBox(height: 40),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: "Poppins",
                  color: AppColors.blackcolor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Enter your email and password",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Poppins",
                  color: AppColors.greycolor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 40),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.greycolor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: AppColors.accentColor,
                  filled: true,
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: AppColors.greycolor,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.greycolor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: AppColors.accentColor,
                  filled: true,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: AppColors.greycolor,
                  ),
                  hintText: "••••••••",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: AppColors.greycolor,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {},
                  child: const Text("Forget password?"),
                ),
              ),
              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Login"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "dont have an account ",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "sign up",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
