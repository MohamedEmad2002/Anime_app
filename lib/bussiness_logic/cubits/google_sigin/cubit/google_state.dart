part of 'google_cubit.dart';

@immutable
abstract class GoogleState {}

class GoogleInitial extends GoogleState {}

class GoogleLoading extends GoogleState {}

class GoogleLoaded extends GoogleState {}

class GoogleError extends GoogleState {
  final String error;
  GoogleError(this.error);
}




