import 'package:job_founder/core/network/api_result.dart';
import 'package:job_founder/core/network/api_services.dart';
import 'package:job_founder/core/repository/base_repository.dart';
import 'package:job_founder/core/repository/contracts/i_jobs_repository.dart';
import 'package:job_founder/features/jobs/data/models/jobs_data_model.dart';

class JobsRepo extends BaseRepository implements IJobsRepository {
  final ApiServices apiServices;

  JobsRepo({required this.apiServices});

  @override
  Future<ApiResult<JobsDataModel>> getJobs() async =>
      handleApiCall(() => apiServices.getJobs());
}