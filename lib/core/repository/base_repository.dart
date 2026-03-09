import 'package:job_founder/core/network/api_result.dart';

abstract class BaseRepository{
      Future<ApiResult<T>>     handleApiCall<T>(Future<T> Function()apiCall) async{
     try{
   final result = ((await apiCall()));
   return ApiResult.success(result);
     }catch(e){
      return ApiResult.failure(e.toString());

     }
           }
}