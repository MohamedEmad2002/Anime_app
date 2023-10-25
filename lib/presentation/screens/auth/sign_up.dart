import 'package:anime/app/color_app.dart';
import 'package:anime/app/image_app.dart';
import 'package:anime/app/text_app.dart';
import 'package:anime/presentation/screens/auth/login_screen.dart';
import 'package:anime/presentation/widgets/tff.dart';
import 'package:anime/presentation/widgets/custom_Row.dart';
import 'package:anime/presentation/widgets/custom_button.dart';
import 'package:anime/presentation/widgets/custom_divider.dart';
import 'package:anime/presentation/widgets/icon_row.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              children: [
                Image.asset(ImageApp.auth),
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  TextApp.welcometoAnimax,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Inter"),
                ),
                const SizedBox(
                  height: 19,
                ),
                CustomTFF(
                    hintText: 'Enter Your Name',
                    kbType: TextInputType.text,
                    controller: nameController),
                const SizedBox(
                  height: 10,
                ),
                CustomTFF(
                    hintText: 'Enter Your Email',
                    kbType: TextInputType.emailAddress,
                    controller: emailController),
                const SizedBox(
                  height: 10,
                ),
                CustomTFF(
                    hintText: 'Enter Your Number',
                    kbType: TextInputType.phone,
                    controller: numberController),
                const SizedBox(
                  height: 10,
                ),
                CustomTFF(
                    hintText: 'Enter Your Password',
                    kbType: TextInputType.visiblePassword,
                    controller: passwordController),
                const SizedBox(
                  height: 10,
                ),
                CustomTFF(
                    hintText: 'Enter Your Confirm Password',
                    kbType: TextInputType.visiblePassword,
                    controller: confirmpasswordController),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    color: ColorsApp.secondaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                    child: const Text(
                      TextApp.signupnow,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                const CustomRow(
                  textOne: TextApp.alreadyhaveanaccount,
                  textTwo: TextApp.login,
                  screen: LoginScreen(),
                ),
                const SizedBox(height: 15,),
                const CustomDivider(
                  text: TextApp.orwith,

                ),
                const SizedBox(height: 10,),
                const IconRow()
              ],
            ),
          ),
        ),
      )),
    );
  }
}
