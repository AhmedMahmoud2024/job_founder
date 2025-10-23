
import 'package:json_annotation/json_annotation.dart';

part 'jobs_data_model.g.dart';

@JsonSerializable()
class JobsDataModel{
  final List<JobsModel> jobs;

  JobsDataModel({required this.jobs});
  factory JobsDataModel.fromJson(Map<String,dynamic>json)=>_$JobsDataModelFromJson(json);
  Map<String,dynamic>toJson()=> _$JobsDataModelToJson(this);  
}

@JsonSerializable()
class JobsModel{
  final int id ;
  final String jobTitle ;
    final String companyName ;
      final String companyLogo ;
      final List<String> jobIndustry;
       final List<String> jobType;
        final String jobGeo ;
          final String jobLevel ;
            final String jobExcerpt ;
              final String jobDescription ;

  JobsModel({required this.id, required this.jobTitle, required this.companyName, required this.companyLogo, required this.jobIndustry, required this.jobType, required this.jobGeo, required this.jobLevel, required this.jobExcerpt, required this.jobDescription});
  factory JobsModel.fromJson(Map<String,dynamic>json)=>_$JobsModelFromJson(json);
  Map<String,dynamic>toJson()=> _$JobsModelToJson(this);  


}