import 'dart:async';
import 'package:anime/app/color_app.dart';
import 'package:anime/app/icons_app.dart';
import 'package:anime/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnBoardingScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorsApp.primaryColor,
        child: SvgPicture.asset('assets/images/icons/Group 176.svg'));
  }
}
