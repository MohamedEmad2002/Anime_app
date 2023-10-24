import 'package:anime/app/color_app.dart';
import 'package:flutter/material.dart';


class CustomTFF extends StatelessWidget {
  final String hintText;
  final TextInputType kbType;
  final TextEditingController controller;
  final Icon?  suffixIcon;
  const CustomTFF({
    Key? key,
    this.suffixIcon,
    required this.hintText,
    required this.kbType,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: Colors.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: ColorsApp.secondaryColor, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: ColorsApp.secondaryColor, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: BorderSide(color: ColorsApp.secondaryColor, width: 1.5),
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(70)),
            borderSide: BorderSide(color: Colors.grey)),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey,fontFamily: "Inter"),
      ),
    );
  }
}
