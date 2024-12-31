
import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: defaultSize),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(googleLogoImage),
                width: 20.0,
              ),
              onPressed: () {},
              label: const Text(signInGoogle)),
        ),
        SizedBox(
          height: formHeight - 20,
        ),
        TextButton(
            onPressed: () {},
            child: Text.rich(TextSpan(
                text: dontHveAcc,
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(
                    text: signUp,
                    style: TextStyle(color: Colors.blue),
                  ),
                ])))
      ],
    );
  }
}
