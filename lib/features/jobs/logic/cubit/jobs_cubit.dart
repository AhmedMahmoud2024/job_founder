import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:job_founder/core/repository/contracts/i_jobs_repository.dart';
import 'package:job_founder/features/jobs/logic/cubit/jobs_state.dart';

import '../../data/models/jobs_data_model.dart';

class JobsCubit extends Cubit<JobsState> {
  final IJobsRepository jobsRepository;
  
  JobsCubit(this.jobsRepository) : super(JobsState.initial());
 List<JobsModel> jobs=[];

Future<void> getJobs() async {
  emit(JobsState.loading());
  try {
    final response = await jobsRepository.getJobs();
  response.when(success: (res){
  jobs=res.jobs;
  emit(JobsState.success(res),
  );
  },
   failure: (e)=>emit(JobsState.fail(e)));
  }catch(e){
  emit(JobsState.fail(e.toString()));
  }
}

}
