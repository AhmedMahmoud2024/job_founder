import 'package:job_founder/core/network/api_result.dart';
import 'package:job_founder/core/repository/base_repository.dart';
import 'package:job_founder/features/auth/login/data/models/login_model.dart';
import 'package:job_founder/features/auth/register/data/models/register_model.dart';

abstract class IAuthRepository implements BaseRepository {
  Future<ApiResult<LoginModel>> login({
    required String email,
    required String password,
  });

  Future<ApiResult<RegisterModel>> register({
    required String email,
    required String password,
  });
}