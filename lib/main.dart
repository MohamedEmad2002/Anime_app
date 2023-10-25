import 'package:anime/presentation/screens/auth/login_screen.dart';
import 'package:anime/presentation/screens/auth/sign_up.dart';
import 'package:anime/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const LoginScreen(),
    );
  }
}

