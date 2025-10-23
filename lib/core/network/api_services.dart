import 'package:dio/dio.dart';
import 'package:job_founder/core/network/api_constants.dart';
import 'package:retrofit/retrofit.dart';
import '../../features/jobs/data/models/jobs_data_model.dart';
part'api_services.g.dart';

@RestApi(baseUrl:ApiConstants.baseUrl)
abstract class ApiServices{
factory  ApiServices(Dio dio)=_ApiServices;

@GET(ApiConstants.jobsLink)
 Future<JobsDataModel> getJobs();

}