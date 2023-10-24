import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String text;
  const CustomDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 136,
          child: Divider(
            height: 25,
            color: Colors.white,
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
        const SizedBox(
          width: 136,
          child: Divider(
            height: 25,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
