part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpSuccess extends SignUpState {}

final class SignUpFailure extends SignUpState {
  final String eMessage;

  SignUpFailure({required this.eMessage});
}

final class SignUpLoading extends SignUpState {}
