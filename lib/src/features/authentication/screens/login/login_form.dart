import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../homepage/screens/home_page.dart';
import '../forgot_password/forgot_password_options/forget_pass_model_bottom_sheet.dart';
import '../forgot_password/forgot_password_options/forgot_pass_btn_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: formHeight - 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    labelText: email,
                    hintText: email,
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: formHeight - 20),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint_outlined),
                    labelText: pswd,
                    hintText: pswd,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.remove_red_eye_sharp))),
              ),
              const SizedBox(
                height: formHeight - 20,
              ),
              // Forgot Password Button---
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      ForgotPasswordScreen.buildShowModalBottomSheet(context);
                    },
                    child: Text(forgetPass)),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(()=> const HomePage());
                    }, child: Text(login.toUpperCase())),
              ),
            ],
          ),
        ));
  }
}
