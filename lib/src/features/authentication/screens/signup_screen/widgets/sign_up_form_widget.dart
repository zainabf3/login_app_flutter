
import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: formHeight - 10),
      child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    label: Text(fullName),
                    prefixIcon: Icon(Icons.person_outline_outlined)),
              ),
              const SizedBox(height: formHeight -20),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text(email),
                    prefixIcon: Icon(Icons.mail_outlined)),
              ),
              const SizedBox(height: formHeight -20),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text(phoneNum),
                    prefixIcon: Icon(Icons.phone)),
              ),
              const SizedBox(height: formHeight -20),
              TextFormField(
                decoration: const InputDecoration(
                    label: Text(pswd),
                    prefixIcon: Icon(Icons.password_outlined)),
              ),
              const SizedBox(height: formHeight -10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){},
                    child: Text(signUp.toUpperCase())),
              )
            ],
          )),
    );
  }
}