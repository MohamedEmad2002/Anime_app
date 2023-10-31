import 'package:anime/app/color_app.dart';
import 'package:anime/app/icons_app.dart';
import 'package:anime/app/image_app.dart';
import 'package:anime/app/text_app.dart';
import 'package:anime/presentation/screens/auth/sign_up.dart';
import 'package:anime/presentation/screens/home/home_screen.dart';
import 'package:anime/presentation/widgets/tff.dart';
import 'package:anime/presentation/widgets/check_row.dart';
import 'package:anime/presentation/widgets/custom_row.dart';
import 'package:anime/presentation/widgets/custom_button.dart';
import 'package:anime/presentation/widgets/custom_divider.dart';
<<<<<<< HEAD
import 'package:anime/presentation/widgets/icon_row.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
=======
import 'package:flutter/material.dart';
>>>>>>> google_auth

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool value = false;

<<<<<<< HEAD
  Future signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance
        .signInWithCredential(credential)
        .then((value) => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            )));
  }
=======
>>>>>>> google_auth

  @override
  Widget build(BuildContext context) {
    TextEditingController emailControl = TextEditingController();
    TextEditingController passwordControl = TextEditingController();
    return Scaffold(
      backgroundColor: ColorsApp.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Center(
              child: Column(
                children: [
                  Image.asset(ImageApp.auth),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    TextApp.welcomeback,
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Checkrow(),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomButton(text: TextApp.login),
                  const SizedBox(
                    height: 10,
                  ),
<<<<<<< HEAD
                  const CustomRow(
                    textOne: TextApp.newtoAnimax,
                    textTwo: TextApp.signup,
                    screen: SignUpScreen(),
=======
                   CustomRow(
                    textOne: TextApp.newtoAnimax,
                    textTwo: TextApp.signup,
                    screen: SignupScreen(),
>>>>>>> google_auth
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomDivider(text: TextApp.orwith),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            
                          },
                          icon: Image.asset(IconsApp.facebook)),
                      IconButton(
                          onPressed: () {
<<<<<<< HEAD
                            signInWithGoogle();
=======
>>>>>>> google_auth
                          }, icon: Image.asset(IconsApp.google)),
                      IconButton(
                          onPressed: () {}, icon: Image.asset(IconsApp.apple)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
