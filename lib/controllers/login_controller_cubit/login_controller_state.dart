part of 'login_controller_cubit.dart';


abstract class LoginControllerState {}

class LoginControllerInitial extends LoginControllerState {}
class LoginLoadingState extends LoginControllerState {}
class LoginLoadedState extends LoginControllerState {
  LoginModel? login;
  LoginLoadedState({required  this.login});
}
class LoginErrorState extends LoginControllerState {}
