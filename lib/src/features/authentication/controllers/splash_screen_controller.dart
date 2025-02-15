import 'package:get/get.dart';
import 'package:login_app_flutter/app_home.dart';

import '../screens/welcome/welcome_screen.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;  //

  Future startAnimation() async{
    await Future.delayed(const Duration(milliseconds: 500)

    );
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const AppHome()));
    Get.to(const WelcomeScreen());
  }

}