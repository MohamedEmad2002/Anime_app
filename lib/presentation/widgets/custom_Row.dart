import 'package:anime/app/color_app.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String textOne;
  final String textTwo;


  const CustomRow({
    super.key,
    required this.textOne,
    required this.textTwo
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          textOne,
          style: const TextStyle(color: Colors.grey, fontFamily: "Inter"),
        ),
        const SizedBox(
          width: 5,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            textTwo,
            style:
                TextStyle(color: ColorsApp.secondaryColor, fontFamily: "Inter"),
          ),
        )
      ],
    );
  }
}
