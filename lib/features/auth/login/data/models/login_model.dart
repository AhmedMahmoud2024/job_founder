
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_model.g.dart';
@JsonSerializable()
class LoginModel {
  final String token;

  LoginModel({required this.token});

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
  
}