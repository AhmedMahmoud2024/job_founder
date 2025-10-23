import 'package:job_founder/core/network/api_result.dart';
import 'package:job_founder/core/network/api_services.dart';
import 'package:job_founder/features/jobs/models/jobs_data_model.dart';

class JobsRepo{
  final ApiServices apiServices;

  JobsRepo({required this.apiServices});
 Future<ApiResult<JobsDataModel>> getJobs()async{
   try{
   final data = await apiServices.getJobs();
   return ApiResult.success(data);
   }catch(e){
    print('error in fetch jobs $e');
    return ApiResult.failure(e.toString());
   }
  }
}