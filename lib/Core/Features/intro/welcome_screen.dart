import 'package:flutter/material.dart';
import 'package:flutter_application_13/Core/Constant/app_image.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://image2url.com/r2/default/images/1770648905053-1f6acd83-3720-43cc-8781-59fd000490d1.png',
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://image2url.com/r2/default/images/1770650764562-a995d1ce-3dbe-4b25-abf3-d569e42f911e.png',
                ),
                SizedBox(height: 35),
                Text(
                  "Welcome \n t Green market",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
