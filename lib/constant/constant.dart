import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

String? token;
class Endpoints{
  static String register="api/users/register";
}


void showToast({required String text, required ToastState state}) =>
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: chooseToastColor(state),
        textColor: Colors.white,
        fontSize: 16.0);

// ignore: constant_identifier_names
enum ToastState { Success, Error, Warning }

Color chooseToastColor(ToastState state) {
  Color color;
  switch (state) {
    case ToastState.Success:
      color = Colors.green;
      break;
    case ToastState.Error:
      color = Colors.red;
      break;
    case ToastState.Warning:
      color = Colors.amber;
      break;
  }
  return color;
}