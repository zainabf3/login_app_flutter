import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/src/constants/colors.dart';
import 'package:login_app_flutter/src/constants/image_strings.dart';
import 'package:login_app_flutter/src/constants/sizes.dart';
import 'package:login_app_flutter/src/constants/text_strings.dart';
import 'package:login_app_flutter/src/features/authentication/controllers/splash_screen_controller.dart';

import '../../../../../app_home.dart';

class SplashScreen extends StatelessWidget{
   SplashScreen({super.key});

  final splashController =  Get.put(SplashScreenController());

  //animate the splash screen
  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
             Obx(
            () => AnimatedPositioned(
                top: splashController.animate.value ? 0 : -30,
                left: splashController.animate.value ? 0 : -30,
                duration: const Duration(milliseconds:1600),
                child: const Image(image: AssetImage(splashTopIcon)),
                           ),
             ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds:1600),
                right: splashController.animate.value ? 40: -80,
                top: 200,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds:1600),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    //     const Align(
                    //   alignment: Alignment.topRight,
                    // ),
                    Text(appName,
                    style: Theme.of(context).textTheme.displayMedium,

                    ),
                    Text(appTagLine,
                    style: Theme.of(context).textTheme.displaySmall,)
                                  ],

                                ),
                  ),),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds:2400),
                bottom: splashController.animate.value ? 50: 0,
                left: 3.0,
                child: AnimatedOpacity(
                    opacity: splashController.animate.value? 1 : 0,
                    duration: const Duration(milliseconds:2000),
                child: const Image(image: AssetImage(splashImage)),
              ),
              ),
            ),
            Obx(
               () => AnimatedPositioned(
                  duration: const Duration(milliseconds:2400),
                bottom: splashController.animate.value ? 40: 0,
                  right: defaultSize,
                  child: Container(
                    width: splashContainerSize,
                    height: splashContainerSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: primaryColor
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

