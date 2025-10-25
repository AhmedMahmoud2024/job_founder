import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:job_founder/core/network/api_services.dart';
import 'package:job_founder/features/jobs/logic/cubit/jobs_cubit.dart';
import 'package:job_founder/features/jobs/repo/jobs_repo.dart';

GetIt getIt=GetIt.instance;
Future<void> setUpGetIt()async{
  Dio dio=Dio();
  getIt.registerLazySingleton<ApiServices>(() =>ApiServices(dio));
   getIt.registerLazySingleton<JobsRepo>(() =>JobsRepo(apiServices: getIt()));
     getIt.registerFactory<JobsCubit>(() =>JobsCubit(getIt()));
}