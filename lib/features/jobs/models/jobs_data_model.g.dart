// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobs_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobsDataModel _$JobsDataModelFromJson(Map<String, dynamic> json) =>
    JobsDataModel(
      jobs: (json['jobs'] as List<dynamic>)
          .map((e) => JobsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JobsDataModelToJson(JobsDataModel instance) =>
    <String, dynamic>{
      'jobs': instance.jobs,
    };

JobsModel _$JobsModelFromJson(Map<String, dynamic> json) => JobsModel(
      id: (json['id'] as num).toInt(),
      jobTitle: json['jobTitle'] as String,
      companyName: json['companyName'] as String,
      companyLogo: json['companyLogo'] as String,
      jobIndustry: (json['jobIndustry'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      jobType:
          (json['jobType'] as List<dynamic>).map((e) => e as String).toList(),
      jobGeo: json['jobGeo'] as String,
      jobLevel: json['jobLevel'] as String,
      jobExcerpt: json['jobExcerpt'] as String,
      jobDescription: json['jobDescription'] as String,
    );

Map<String, dynamic> _$JobsModelToJson(JobsModel instance) => <String, dynamic>{
      'id': instance.id,
      'jobTitle': instance.jobTitle,
      'companyName': instance.companyName,
      'companyLogo': instance.companyLogo,
      'jobIndustry': instance.jobIndustry,
      'jobType': instance.jobType,
      'jobGeo': instance.jobGeo,
      'jobLevel': instance.jobLevel,
      'jobExcerpt': instance.jobExcerpt,
      'jobDescription': instance.jobDescription,
    };
