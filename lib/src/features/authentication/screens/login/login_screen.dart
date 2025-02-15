import 'package:flutter/material.dart';
import 'package:login_app_flutter/src/constants/image_strings.dart';
import 'package:login_app_flutter/src/constants/sizes.dart';
import 'package:login_app_flutter/src/constants/text_strings.dart';

import 'login_footer_widget.dart';
import 'login_form.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // make image responsive

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(size: size),
                const LoginForm(),
                const LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

