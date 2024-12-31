import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:login_app_flutter/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_app_flutter/src/utils/theme/theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      home: SplashScreen(),
    );
  }
}
