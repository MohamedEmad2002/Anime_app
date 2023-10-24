import 'package:anime/app/color_app.dart';
import 'package:anime/app/text_app.dart';
import 'package:flutter/material.dart';

class Checkrow extends StatefulWidget {
  const Checkrow({super.key});

  @override
  State<Checkrow> createState() => _CheckrowState();
}

class _CheckrowState extends State<Checkrow> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.white,
          width: 10,
          height: 10,
          child: Checkbox(
            checkColor: Colors.white,
            activeColor: ColorsApp.secondaryColor,
            value: value,
            onChanged: (bool? value) {
              setState(() {
                this.value = value!;
              });
            },
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          TextApp.rememberme,
          style: TextStyle(color: Colors.grey, fontFamily: "Inter"),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(TextApp.forgotpassword,
              style: TextStyle(
                  color: ColorsApp.secondaryColor, fontFamily: "Inter")),
        ),
      ],
    );
  }
}
