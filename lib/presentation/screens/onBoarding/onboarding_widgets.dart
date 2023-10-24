import 'package:anime/app/image_app.dart';
import 'package:flutter/material.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String body;
  OnBoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

List<OnBoardingModel> boardingList = [
    OnBoardingModel(
      image: ImageApp.onBoardingOne,
      title: 'Welcome to Animax',
      body: 'the best streaming anime app of century \n to entertain you every day',
    ),
    OnBoardingModel(
      image: ImageApp.onBoardingTwo,
      title: 'Download and watch \n offline',
      body: 'always have something to watch offline ',
    ),
    OnBoardingModel(
      image: ImageApp.onBoardingThree,
      title: 'Watch everywhere',
      body: 'Stream on your phone ,tablet, laptop \n and more',
    ),
  ];





  Widget buildBoardingItem(OnBoardingModel model) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image(
            image: AssetImage(model.image),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          model.title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          model.body,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  