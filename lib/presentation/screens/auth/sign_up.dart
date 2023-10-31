import 'package:anime/app/color_app.dart';
import 'package:anime/app/image_app.dart';
import 'package:anime/app/text_app.dart';
import 'package:anime/bussiness_logic/cubits/register/cubit/register_cubit.dart';
import 'package:anime/constant/cash_helper.dart';
import 'package:anime/constant/constant.dart';
import 'package:anime/presentation/screens/auth/login_screen.dart';
import 'package:anime/presentation/screens/home/home_screen.dart';
import 'package:anime/presentation/widgets/tff.dart';
import 'package:anime/presentation/widgets/custom_row.dart';
import 'package:anime/presentation/widgets/custom_divider.dart';
import 'package:anime/presentation/widgets/icon_row.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController numberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccessState) {
          // ignore: unrelated_type_equality_checks
          if (state.regiserModel.statusCode == 201) {
            CashHelper.saveData(key: 'token', value: state.regiserModel.token)
                .then((value) {
              token = state.regiserModel.token;
              showToast(
                  text: (state.regiserModel.message.toString()),
                  state: ToastState.Success);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                  (route) => false);
            });
          } else {
            if (kDebugMode) {
              print(state.regiserModel.message);
            }
            showToast(
                text: (state.regiserModel.message.toString()), state: ToastState.Error);
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
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
                          onTap: () {},
                          onSubmit: () {},
                          onChange: (value) {
                            if (kDebugMode) {
                              print(value);
                            }
                          },
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'name must not be empty';
                            } else {
                              return null;
                            }
                          },
                          hintText: 'Enter Your Name',
                          kbType: TextInputType.text,
                          controller: nameController),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTFF(
                          onTap: () {},
                          onSubmit: () {},
                          onChange: (value) {
                            if (kDebugMode) {
                              print(value);
                            }
                          },
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'Email must not be empty';
                            } else {
                              return null;
                            }
                          },
                          hintText: 'Enter Your Email',
                          kbType: TextInputType.emailAddress,
                          controller: emailController),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTFF(
                          onTap: () {},
                          onSubmit: () {},
                          onChange: (value) {
                            if (kDebugMode) {
                              print(value);
                            }
                          },
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'Phone must not be empty';
                            } else {
                              return null;
                            }
                          },
                          hintText: 'Enter Your Number',
                          kbType: TextInputType.phone,
                          controller: numberController),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTFF(
                          onTap: () {},
                          onSubmit: () {},
                          onChange: (value) {
                            if (kDebugMode) {
                              print(value);
                            }
                          },
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'Password must not be empty';
                            } else {
                              return null;
                            }
                          },
                          hintText: 'Enter Your Password',
                          kbType: TextInputType.visiblePassword,
                          controller: passwordController),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTFF(
                          onTap: () {},
                          onSubmit: () {},
                          onChange: (value) {
                            if (kDebugMode) {
                              print(value);
                            }
                          },
                          validate: (value) {
                            if (value.isEmpty) {
                              return 'Confirm Password name must not be empty';
                            } else {
                              return null;
                            }
                          },
                          hintText: 'Enter Your Confirm Password',
                          kbType: TextInputType.visiblePassword,
                          controller: confirmpasswordController),
                      const SizedBox(
                        height: 25,
                      ),
                      ConditionalBuilder(
                        condition: state is! RegisterLoadingState,
                        fallback: (BuildContext context) {
                          return const Center(
                              child: CircularProgressIndicator());
                        },
                        builder: (BuildContext context) {
                          return SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: MaterialButton(
                              onPressed: () {
                                 RegisterCubit.get(context).userRegister(
                                    name: nameController.text,
                                    email: emailController.text,
                                    password: passwordController.text,
                                    password_confirmation:confirmpasswordController.text,
                                    phone_number: numberController.toString());
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
                          );
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustomRow(
                        textOne: TextApp.alreadyhaveanaccount,
                        textTwo: TextApp.login,
                        screen: LoginScreen(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CustomDivider(
                        text: TextApp.orwith,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
