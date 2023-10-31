import 'dart:convert';

import 'package:anime/constant/constant.dart';
import 'package:anime/data/services/dio_helper.dart';
import 'package:anime/data/models/register_model.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(initialState) : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);

  late RegisterModel regiserModel;

  void userRegister({
    required String name,
    required String email,
    required String password,
    required String password_confirmation,
    required String phone_number,
  }){
    emit(RegisterLoadingState());
    DioHelper.postData(url: Endpoints.register, data: {
      "name":name,
      "email":email,
      "password":password,
      "password_confirmation":password_confirmation,
      "phone_number":phone_number,
      
    }).then((value) {
      regiserModel=RegisterModel.fromJson(jsonDecode(value.data));
      if (kDebugMode) {
        print("=====");
      }
      if (kDebugMode) {
        print(value.data);
      }
      if (kDebugMode) {
        print("======");
      }
       emit(RegisterSuccessState(regiserModel));
    }).catchError((onError){
      if (kDebugMode) {
        print(onError.toString());
      }
      emit(RegisterErrorState(onError.toString()));
    });

  }

}
