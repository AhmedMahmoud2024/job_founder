

import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel{
  final int id;
  final String token;

  RegisterModel({required this.id,required this.token});

 factory RegisterModel.fromJson(Map<String,dynamic> json)=>_$RegisterModelFromJson(json);

 Map<String,dynamic> toJson()=>_$RegisterModelToJson(this);
}