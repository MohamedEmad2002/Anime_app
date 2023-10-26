import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

part 'google_state.dart';

class GoogleCubit extends Cubit<GoogleState> {
  GoogleCubit() : super(GoogleInitial());

  static GoogleCubit get(context) => BlocProvider.of(context);
  final GoogleCubit _googleSignIn = GoogleCubit();
  final _auth = FirebaseAuth.instance;

  void googleLogin() async {
    emit(GoogleLoading());
    try {
      final userAccount = await GoogleSignIn().signIn();

      if (userAccount == null) return;

      final GoogleSignInAuthentication? googleAuth =
          await userAccount.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final userCredential = await _auth.signInWithCredential(credential);

      emit(GoogleLoaded());
    } catch (e) {
      emit(GoogleError(e.toString()));
    }
  }
}
