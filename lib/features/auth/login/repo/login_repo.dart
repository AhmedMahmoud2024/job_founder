import 'package:job_founder/features/auth/login/data/models/login_model.dart';
import 'package:job_founder/features/auth/register/data/models/register_model.dart';

import '../../../../../core/network/api_result.dart';
import '../../../../../core/network/api_services.dart';

class LoginRepo{ //repo connect with api server and get data
  final  ApiServices apiServices;
  LoginRepo({required this.apiServices});

  Future<ApiResult<LoginModel>> login({required String email,required String password}) async{
    try{
   final response=await apiServices.login({
    "email":email,
    "password":password
   },"reqres-free-v1"
   );
   return ApiResult.success(response);
    }catch(e){
      return ApiResult.failure(e.toString());
    }
  }
}