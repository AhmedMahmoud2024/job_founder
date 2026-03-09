import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_founder/core/repository/contracts/i_auth_repository.dart';

import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final IAuthRepository authRepository;
  RegisterCubit(this.authRepository) : super(RegisterState.initial());
  Future<void> register ({required String email, required String password}) async {
    emit(RegisterState.loading());
    try {
      final response = await authRepository.register(email: email, password: password);
   response.when(success: (data)=>emit(RegisterState.success(data)), failure: (error)=>emit(RegisterState.fail(error)));

   }catch (e) {
     emit(RegisterState.fail(e.toString()));
   }
}
}
