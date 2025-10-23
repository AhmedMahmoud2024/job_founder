import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:job_founder/features/jobs/logic/cubit/jobs_state.dart';
import 'package:job_founder/features/jobs/repo/jobs_repo.dart';

class JobsCubit extends Cubit<JobsState> {
  final JobsRepo jobsRepo;
  
  JobsCubit(this.jobsRepo) : super(JobsState.initial());

Future<void> getJobs() async{
  emit(JobsState.loading());
  try{
  final response =await jobsRepo.getJobs();
  response.when(success: (res)=>emit(JobsState.success(res),),
   failure: (e)=>emit(JobsState.fail(e)));
  }catch(e){
  emit(JobsState.fail(e.toString()));
  }
}

}
