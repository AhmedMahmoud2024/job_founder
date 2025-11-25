import 'package:dio/dio.dart';
import 'package:job_founder/core/network/api_constants.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/auth/login/data/models/login_model.dart';
import '../../features/auth/register/data/models/register_model.dart';
import '../../features/jobs/data/models/jobs_data_model.dart';
part'api_services.g.dart';

@RestApi(baseUrl:ApiConstants.baseUrl)
abstract class ApiServices{
factory  ApiServices(Dio dio)=_ApiServices;

@GET(ApiConstants.jobsLink)
 Future<JobsDataModel> getJobs();

@POST(ApiConstants.registerLink)
 Future<RegisterModel> register(@Body() Map<String,dynamic> userData,@Header("x-api-key") String);
 

@POST(ApiConstants.loginLink)
 Future<LoginModel> login(@Body() Map<String,dynamic> userData,@Header("x-api-key") String);


}

