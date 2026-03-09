import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:job_founder/core/network/api_services.dart';
import 'package:job_founder/core/repository/contracts/i_auth_repository.dart';
import 'package:job_founder/core/repository/contracts/i_jobs_repository.dart';
import 'package:job_founder/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:job_founder/features/auth/login/repo/login_repo.dart';
import 'package:job_founder/features/auth/register/data/repo/register_repo.dart';
import 'package:job_founder/features/auth/register/logic/cubit/register_cubit.dart';
import 'package:job_founder/features/jobs/logic/cubit/jobs_cubit.dart';
import 'package:job_founder/features/jobs/repo/jobs_repo.dart';

GetIt getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  // Setup Networking
  final dio = Dio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  // Setup Jobs Dependencies
  _setupJobsDependencies();

  // Setup Auth Dependencies
  _setupAuthDependencies();
}

/// Setup Jobs feature dependencies
void _setupJobsDependencies() {
  // Register repository as interface (Dependency Inversion Principle)
  getIt.registerLazySingleton<IJobsRepository>(
    () => JobsRepo(apiServices: getIt<ApiServices>()),
  );

  // Cubit depends on interface, not concrete class
  getIt.registerFactory<JobsCubit>(
    () => JobsCubit(getIt<IJobsRepository>()),
  );
}

/// Setup Authentication feature dependencies (handles both login and register)
void _setupAuthDependencies() {
  // Register single auth repository that implements both login and register
  getIt.registerLazySingleton<IAuthRepository>(
    () => LoginRepo(apiServices: getIt<ApiServices>()),
  );

  // Cubits depend on interface, not concrete classes
  getIt.registerFactory<LoginCubit>(
    () => LoginCubit(getIt<IAuthRepository>()),
  );

  getIt.registerFactory<RegisterCubit>(
    () => RegisterCubit(getIt<IAuthRepository>()),
  );
}