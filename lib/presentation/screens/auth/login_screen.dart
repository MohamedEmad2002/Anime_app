import 'package:anime/app/color_app.dart';
import 'package:anime/app/image_app.dart';
import 'package:anime/app/text_app.dart';
import 'package:anime/presentation/screens/auth/tff.dart';
import 'package:anime/presentation/widgets/check_row.dart';
import 'package:anime/presentation/widgets/custom_Row.dart';
import 'package:anime/presentation/widgets/custom_button.dart';
import 'package:anime/presentation/widgets/custom_divider.dart';
import 'package:anime/presentation/widgets/icon_row.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController emailControl = TextEditingController();
    TextEditingController passwordControl = TextEditingController();
    return Scaffold(
      backgroundColor: ColorsApp.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Center(
            child: Column(
              children: [
                Image.asset(ImageApp.auth),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  TextApp.welcomeback,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Inter"),
                ),
                const SizedBox(
                  height: 19,
                ),
                CustomTFF(
                  hintText: 'E-mail',
                  controller: emailControl,
                  kbType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTFF(
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: ColorsApp.primaryColor,
                  ),
                  hintText: 'Password',
                  controller: passwordControl,
                  kbType: TextInputType.visiblePassword,
                ),
                const Checkrow(),
                const SizedBox(
                  height: 10,
                ),
                
                const CustomButton(text: TextApp.login),
                const SizedBox(height: 10,),
                const CustomRow(
                  textOne: TextApp.newtoAnimax,
                  textTwo: TextApp.signup,
                ),
                const CustomDivider(text: TextApp.orwith),
                const SizedBox(height: 20,),
                const IconRow()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
