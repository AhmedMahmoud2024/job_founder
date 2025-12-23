import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_founder/features/auth/login/logic/cubit/login_state.dart';

import '../../repo/login_repo.dart';


class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginState.initial());

   Future<void> login ({required String email, required String password})async{
    emit(LoginState.loading());
    try {
    final response = await loginRepo.login(email: email, password: password);
   response.when(success: (data)=>emit(LoginState.success(data)), failure: (error)=>emit(LoginState.fail(error)));

   }catch (e) {
     emit(LoginState.fail(e.toString()));
   }
}
}
