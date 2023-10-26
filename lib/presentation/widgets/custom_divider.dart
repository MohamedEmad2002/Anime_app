import 'package:anime/app/color_app.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String text;
  const CustomDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 125,
          child: Divider(
            height: 25,
            color: ColorsApp.thirdColor,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontFamily: "Inter", fontSize: 20),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 125,
          child: Divider(
            height: 25,
            color: ColorsApp.thirdColor,
          ),
        ),
      ],
    );
  }
}
