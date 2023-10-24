import 'package:anime/app/icons_app.dart';
import 'package:flutter/material.dart';

class IconRow extends StatelessWidget {

  
  const IconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: Image.asset(IconsApp.facebook)),
        IconButton(onPressed: () {}, icon: Image.asset(IconsApp.google)),
        IconButton(onPressed: () {}, icon: Image.asset(IconsApp.apple)),
      ],
    );
  }
}
