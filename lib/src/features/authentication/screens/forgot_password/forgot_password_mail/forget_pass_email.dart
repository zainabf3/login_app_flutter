import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/src/common_widgets/form/form_header_widget.dart';
import 'package:login_app_flutter/src/constants/image_strings.dart';
import 'package:login_app_flutter/src/constants/sizes.dart';
import 'package:login_app_flutter/src/constants/text_strings.dart';

import '../forgot_password_otp/otp_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              children: [
                SizedBox(
                  height: defaultSize * 4,
                ),
                FormHeaderWidget(
                  image: forgotPassImg,
                  title: forgotPasswordTitle,
                  subTitle: forgotMailSubtitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: formHeight,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(email),
                        hintText: email,
                        prefixIcon: Icon(Icons.mail_outline_rounded)
      
                      ),
      
                    ),
                    SizedBox(height: 20.0),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Get.to(()=> const OTPScreen());
                      },
                          child: Text("Next")),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
