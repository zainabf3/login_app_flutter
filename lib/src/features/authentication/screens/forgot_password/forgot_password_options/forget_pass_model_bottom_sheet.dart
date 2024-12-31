import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../forgot_password_mail/forget_pass_email.dart';
import 'forgot_pass_btn_widget.dart';

class ForgotPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        builder: (context) => Container(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                forgotPasswordTitle,
                style:
                Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                forgotPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 30.0,
              ),
              ForgetPasswordBtnWidget(
                title: email,
                btnIcon: Icons.mail_outline_rounded,
                subTitle: resetViaEmail,
                onTap: () {
                  Navigator.pop(context);
                  Get.to(()=> const ForgetPasswordMailScreen());
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ForgetPasswordBtnWidget(
                title: phoneNum,
                btnIcon: Icons.mobile_friendly_rounded,
                subTitle: resetViaPhone,
                onTap: () {},
              )
            ],
          ),
        ));
  }
}
