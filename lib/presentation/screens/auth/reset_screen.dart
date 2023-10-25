import 'package:anime/app/color_app.dart';
import 'package:anime/app/icons_app.dart';
import 'package:anime/app/image_app.dart';
import 'package:anime/app/text_app.dart';
import 'package:anime/presentation/widgets/indicator.dart';
import 'package:anime/presentation/widgets/tff.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ResetScreen extends StatelessWidget {
  ResetScreen({super.key});

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsApp.primaryColor,
        appBar: AppBar(
          backgroundColor: ColorsApp.primaryColor,
          elevation: 0.0,
        ),
        body: Center(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              children: [
                Image.asset(ImageApp.reset),
                const Text(TextApp.resetpassword,
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                Text(
                  TextApp.nowyoucanresetyouroldPassword,
                  style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: ColorsApp.thirdColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTFF(
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: ColorsApp.primaryColor,
                    ),
                    hintText: "new password",
                    kbType: TextInputType.visiblePassword,
                    controller: passwordController),
                const SizedBox(
                  height: 15,
                ),
                CustomTFF(
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: ColorsApp.primaryColor,
                    ),
                    hintText: "confirm password",
                    kbType: TextInputType.visiblePassword,
                    controller: confirmpasswordController),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: ColorsApp.primaryColor,
                          actions: <Widget>[
                            Center(
                              child: SizedBox(
                                width: 310,
                                height: 410,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Image.asset(IconsApp.congratulation),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      TextApp.congratulation,
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: LinearGradient(
                                            colors: [
                                              Colors.white,
                                              ColorsApp.fifthColor
                                            ],
                                          ).colors[1]),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      TextApp
                                          .yourAccountisreadytouseyouwillbedirectedtothehomepageinafewseconds,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: ColorsApp.thirdColor),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SpinKitCircle(
                                      color: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Colors.white,
                                          ColorsApp.fifthColor,
                                        ],
                                      ).colors[1],
                                      size: 60.0,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    color: ColorsApp.secondaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                    child: const Text(
                      TextApp.reset,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {},
                    color: ColorsApp.fourthColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                    child: const Text(
                      TextApp.cancel,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
