import 'package:bloc/bloc.dart';
import 'package:cubit_restapi/models/login_model.dart';
import 'package:cubit_restapi/models/repository/login_repository.dart';
import 'package:meta/meta.dart';

part 'login_controller_state.dart';

class LoginControllerCubit extends Cubit<LoginControllerState> {
  LoginControllerCubit() : super(LoginControllerInitial());

  Login(String email,String password)async
  {
    try{
      emit(LoginLoadingState());
     var res= await LoginRepo.doLogin(email, password);
      emit(LoginLoadedState(login: res));
    }catch(e)
    {
      emit(LoginErrorState());
    }
  }

}
