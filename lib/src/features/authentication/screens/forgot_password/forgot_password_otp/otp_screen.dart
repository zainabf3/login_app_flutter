

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app_flutter/src/constants/sizes.dart';
import 'package:login_app_flutter/src/constants/text_strings.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(defaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(otpTitle, style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80.0,
            ),),
            Text(otpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: 40.0,),
            const Text("$otpMessage support@example.com", textAlign: TextAlign.center,),
            const SizedBox(height: 20.0,),
            OtpTextField(
              numberOfFields: 6, // the OTP sent from firebase will be 6 digits
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              keyboardType: TextInputType.number,
              // onSubmit: (code){
              //   print("OTP is => $code"); // to get otp info submitted by user
              // },
            ),
            SizedBox(height: 20.0,),
            SizedBox(
              width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text("Next")))
          ],
        ),

      ),
    );
  }

}