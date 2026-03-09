import 'package:job_founder/core/network/api_result.dart';
import 'package:job_founder/core/repository/base_repository.dart';
import 'package:job_founder/features/jobs/data/models/jobs_data_model.dart';

abstract class IJobsRepository implements BaseRepository {
  Future<ApiResult<JobsDataModel>> getJobs();
}