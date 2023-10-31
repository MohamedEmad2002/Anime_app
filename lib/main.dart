import 'package:anime/bussiness_logic/cubits/bloc_observer/bloc_observer.dart';
import 'package:anime/bussiness_logic/cubits/register/cubit/register_cubit.dart';
import 'package:anime/data/models/register_model.dart';
import 'package:anime/data/services/dio_helper.dart';
import 'package:anime/presentation/screens/auth/login_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RegisterCubit(RegisterInitial())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const LoginScreen(),
      ),
    );
  }
}