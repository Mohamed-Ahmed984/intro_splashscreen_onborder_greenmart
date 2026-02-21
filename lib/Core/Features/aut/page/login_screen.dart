import 'package:flutter/material.dart';
import 'package:flutter_application_13/Core/Constant/app_image.dart';
import 'package:flutter_application_13/Core/Style/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),

              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(AppImage.carrot),
              ),

              const SizedBox(height: 40),

              const Text("Login"),

              const SizedBox(height: 20),

              const Text("Email"),

              TextFormField(
                decoration: InputDecoration(
                  fillColor: AppColors.accentColor,
                  filled: true,
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "enter a text";
                  }

                  if (!value.contains("@")) {
                    return "email must contain @";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              const Text("Password"),

              PasswordField(),

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print("Valid");
                    }
                  },
                  child: const Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isHidden,
      decoration: InputDecoration(
        fillColor: AppColors.accentColor,
        filled: true,
        hintText: "••••••••",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            isHidden ? Icons.remove_red_eye : Icons.visibility_off,
            color: AppColors.greycolor,
          ),
          onPressed: () {
            setState(() {
              isHidden = !isHidden;
            });
          },
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "enter a text";
        }

        if (value.length < 6) {
          return "password must be at least 6 characters";
        }

        return null;
      },
    );
  }
}
