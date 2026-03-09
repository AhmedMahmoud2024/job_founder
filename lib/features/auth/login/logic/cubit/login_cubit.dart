import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_founder/core/repository/contracts/i_auth_repository.dart';
import 'package:job_founder/features/auth/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final IAuthRepository authRepository;
  LoginCubit(this.authRepository) : super(LoginState.initial());

   Future<void> login ({required String email, required String password}) async {
    emit(LoginState.loading());
    try {
      final response = await authRepository.login(email: email, password: password);
   response.when(success: (data)=>emit(LoginState.success(data)), failure: (error)=>emit(LoginState.fail(error)));

   }catch (e) {
     emit(LoginState.fail(e.toString()));
   }
}
}
