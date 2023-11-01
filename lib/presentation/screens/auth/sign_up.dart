import 'package:anime/app/color_app.dart';
import 'package:anime/app/image_app.dart';
import 'package:anime/app/text_app.dart';
import 'package:anime/constant/cash_helper.dart';
import 'package:anime/constant/constant.dart';
import 'package:anime/presentation/screens/auth/login_screen.dart';
import 'package:anime/presentation/screens/home/home_screen.dart';
import 'package:anime/presentation/widgets/tff.dart';
import 'package:anime/presentation/widgets/custom_row.dart';
import 'package:anime/presentation/widgets/custom_divider.dart';
import 'package:anime/presentation/widgets/icon_row.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bussiness_logic/cubits/register/cubit/register_cubit.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccessState) {
          if (state.regiserModel.statusCode == 200) {
            if (kDebugMode) {
              print(state.regiserModel.message);
            }
            if (kDebugMode) {
              print(state.regiserModel.token);
            }
            CashHelper.saveData(
                    key: 'token', value: state.regiserModel.token)
                .then((value) {
              token = state.regiserModel.token;
              showToast(
                  text: (state.regiserModel.message),
                  state: ToastState.Success);
              Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>const HomeScreen()),(route)=>false);
            });
          } else {
            showToast(
                text: (state.regiserModel.message), state: ToastState.Error);
            if (kDebugMode) {
              print(
                '${state.regiserModel.message}this is login error');
            }
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: ColorsApp.primaryColor,
          body: SafeArea(
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Image.asset(ImageApp.auth),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            TextApp.welcometoAnimax,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Inter"),
                          ),
                          const SizedBox(
                            height: 19,
                          ),
                          CustomTFF(
                              hintText: 'Enter Your Name',
                              kbType: TextInputType.text,
                              controller: nameController,
                            onTap: (){},
                            onChanged: (value){if (kDebugMode) {
                              print(value);
                            }},
                            onSubmit: (){},
                            validator: (value)
                            {
                              if(value.isEmpty) {
                                return 'Name Can not be Empty';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTFF(
                              hintText: 'Enter Your Email',
                              kbType: TextInputType.emailAddress,
                              controller: emailController,

                            onTap: (){},
                            onChanged: (value){if (kDebugMode) {
                              print(value);
                            }},
                            onSubmit: (){},

                            validator: (value)
                            {
                              if(value.isEmpty) {
                                return 'Name Can not be Email';
                              } else {
                                return null;
                              }
                            },),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTFF(
                              hintText: 'Enter Your Number',
                              kbType: TextInputType.phone,
                              controller: numberController,
                            onTap: (){},
                            onChanged: (value){if (kDebugMode) {
                              print(value);
                            }},
                            onSubmit: (){},

                            validator: (value)
                            {
                              if(value.isEmpty) {
                                return 'Name Can not be Number';
                              } else {
                                return null;
                              }
                            },),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTFF(
                              hintText: 'Enter Your Password',
                              kbType: TextInputType.visiblePassword,
                              controller: passwordController,

                            onTap: (){},
                            onChanged: (value){if (kDebugMode) {
                              print(value);
                            }},
                            onSubmit: (){},

                            validator: (value)
                            {
                              if(value.isEmpty) {
                                return 'Password Can not be Empty';
                              } else {
                                return null;
                              }
                            },),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTFF(
                              hintText: 'Enter Your Confirm Password',
                              kbType: TextInputType.visiblePassword,
                              controller: confirmpasswordController,

                            onTap: (){},
                            onChanged: (value){if (kDebugMode) {
                              print(value);
                            }},
                            onSubmit: (){},

                            validator: (value)
                            {
                              if(value.isEmpty) {
                                return 'Confirm Password Can not be Empty';
                              } else {
                                return null;
                              }
                            },),
                          const SizedBox(
                            height: 25,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: MaterialButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  RegisterCubit.get(context).userRegister(
                                    name: nameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                    password_confirmation: confirmpasswordController.text,
                                    phone_number: numberController.text,
                                  );
                                }
                              },
                              color: ColorsApp.secondaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70)),
                              child: const Text(
                                TextApp.signupnow,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Inter",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const CustomRow(
                            textOne: TextApp.alreadyhaveanaccount,
                            textTwo: TextApp.login,
                            screen: LoginScreen(),
                          ),
                          const SizedBox(height: 15,),
                          const CustomDivider(
                            text: TextApp.orwith,

                          ),
                          const SizedBox(height: 10,),
                          const IconRow()
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        );
      },
    );
  }
}
