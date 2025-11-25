import 'package:job_founder/features/auth/register/data/models/register_model.dart';

import '../../../../../core/network/api_result.dart';
import '../../../../../core/network/api_services.dart';

class RegisterRepo{ //repo connect with api server and get data
  final  ApiServices apiServices;
  RegisterRepo({required this.apiServices});

  Future<ApiResult<RegisterModel>> register({required String email,required String password}) async{
    try{
   final response=await apiServices.register({
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