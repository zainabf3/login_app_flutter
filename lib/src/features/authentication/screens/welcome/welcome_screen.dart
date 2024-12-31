import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/src/constants/colors.dart';
import 'package:login_app_flutter/src/constants/image_strings.dart';

import 'package:login_app_flutter/src/constants/text_strings.dart';
import 'package:login_app_flutter/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app_flutter/src/features/authentication/screens/signup_screen/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mobHeight = MediaQuery.of(context).size.height;
    var mobBrightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = mobBrightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? secondaryColor : primaryColor,
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(welcomeScreenImage),
              height: mobHeight * 0.6,
            ),
            Column(
              children: [
                Text(welcomeTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                Text(
                  welcomeTagLine,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () => Get.to(() => const LoginScreen()), child: Text(login.toUpperCase())

                    )),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed:  () => Get.to(() => const SignUpScreen()),
                        child: Text(signUp.toUpperCase()))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
