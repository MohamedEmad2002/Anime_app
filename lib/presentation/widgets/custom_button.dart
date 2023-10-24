import 'package:anime/app/color_app.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: MaterialButton(
        onPressed: () {},
        color: ColorsApp.secondaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontFamily: "Inter"),
        ),
      ),
    );
  }
}
