import 'package:job_founder/core/repository/base_repository.dart';
import 'package:job_founder/core/repository/contracts/i_auth_repository.dart';
import 'package:job_founder/features/auth/login/data/models/login_model.dart';
import 'package:job_founder/features/auth/register/data/models/register_model.dart';

import '../../../../../core/network/api_result.dart';
import '../../../../../core/network/api_services.dart';

class RegisterRepo extends BaseRepository implements IAuthRepository {
  final ApiServices apiServices;

  RegisterRepo({required this.apiServices});

  @override
  Future<ApiResult<RegisterModel>> register({
    required String email,
    required String password,
  }) async =>
      handleApiCall(() => apiServices.register(
            {"email": email, "password": password},
            "reqres-free-v1",
          ));

  @override
  Future<ApiResult<LoginModel>> login({
    required String email,
    required String password,
  }) async =>
      handleApiCall(() => apiServices.login(
            {"email": email, "password": password},
            "reqres-free-v1",
          ));
}