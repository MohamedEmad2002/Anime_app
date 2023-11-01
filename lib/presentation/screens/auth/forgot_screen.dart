import 'package:anime/app/color_app.dart';
import 'package:anime/app/image_app.dart';
import 'package:anime/app/text_app.dart';
import 'package:anime/presentation/screens/auth/otp_screen.dart';
import 'package:anime/presentation/widgets/tff.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ForgotScreen extends StatelessWidget {
  ForgotScreen({super.key});

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorsApp.primaryColor,
        elevation: 0.0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Center(
            child: Column(
              children: [
                Image.asset(ImageApp.forgot),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  TextApp.forgotpassword,
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(TextApp.donotworry,
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                const SizedBox(
                  height: 25,
                ),
                CustomTFF(
                    hintText: "Enter your Email",
                    kbType: TextInputType.emailAddress,
                    controller: emailController, onChanged: (value) {  }, validator: (value) {  },),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpScreen(),));
                    },
                    color: ColorsApp.secondaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                    child: const Text(
                      TextApp.sendverfication,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
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
          ),
        ),
      )),
    );
  }
}
