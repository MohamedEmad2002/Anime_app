import 'package:anime/app/color_app.dart';
import 'package:anime/app/image_app.dart';
import 'package:anime/app/text_app.dart';
import 'package:anime/presentation/widgets/custom_Row.dart';
import 'package:anime/presentation/widgets/otp_widgets.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorsApp.primaryColor,
        elevation: 0.0,
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
            child: Center(
          child: Column(
            children: [
              Image.asset(ImageApp.otp),
              const Text(
                TextApp.verificationCode,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600),
              ),
              Text(
                TextApp.entercode,
                style: TextStyle(
                    fontSize: 12,
                    color: ColorsApp.fourthColor,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 40,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Otp(),
              Otp(),
              Otp(),
              Otp(),
              Otp(),
                ],
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: CustomRow(
                    screen:  OtpScreen(),
                    textOne: TextApp.didntYoureceiveanycode,
                    textTwo: TextApp.resend,
                  ),
              ),
              const SizedBox(height: 30,),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    color: ColorsApp.secondaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                    child: const Text(
                      TextApp.confirm,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    color: ColorsApp.fourthColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                    child: const Text(
                      TextApp.cancel,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
            ],
          ),
        )),
      ),
    );
  }
}
