import 'package:anime/app/color_app.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final Widget screen;

  const CustomRow(
      {super.key,
      required this.textOne,
      required this.textTwo,
      required this.screen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Text(
            textOne,
            style: const TextStyle(color: Colors.grey, fontFamily: "Inter"),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return screen;
              }));
            },
            child: Text(
              textTwo,
              style: TextStyle(
                  color: ColorsApp.secondaryColor, fontFamily: "Inter"),
            ),
          )
        ],
      ),
    );
  }
}
