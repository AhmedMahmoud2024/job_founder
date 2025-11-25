import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_founder/features/auth/register/data/repo/register_repo.dart';

import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> { //cubit need repo cause it listen to it to ui
 final RegisterRepo registerRepo;
  RegisterCubit(this.registerRepo) : super(RegisterState.initial());
  Future<void> register ({required String email, required String password})async{
    emit(RegisterState.loading());
    try {
    final response = await registerRepo.register(email: email, password: password);
   response.when(success: (data)=>emit(RegisterState.success(data)), failure: (error)=>emit(RegisterState.fail(error)));

   }catch (e) {
     emit(RegisterState.fail(e.toString()));
   }
}
}
