import 'package:flutter/material.dart';
import 'package:login_app_flutter/src/common_widgets/form/form_header_widget.dart';

import 'package:login_app_flutter/src/constants/image_strings.dart';
import 'package:login_app_flutter/src/constants/sizes.dart';
import 'package:login_app_flutter/src/constants/text_strings.dart';

import 'widgets/sign_up_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              children: [
                const FormHeaderWidget(
                    image: registerImage,
                    title: signUpTitle,
                    subTitle: signUpSubtitle),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(width: double.infinity,
                    child: OutlinedButton.icon(
                        onPressed: (){},
                      icon: Image(image: AssetImage(googleLogoImage),width: 20.0,),
                        label: Text(signInGoogle.toUpperCase()),
                        ),
                    ),
                    TextButton(onPressed: (){}, 
                        child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: alreadyHveAcc,
                                style: Theme.of(context).textTheme.bodyLarge),
                                TextSpan(text: login.toUpperCase())
                              ]
                            )
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

