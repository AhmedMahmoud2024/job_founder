import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory{
  DioFactory._();
  static Dio? dio;
 static Future<Dio?> getDio()async{
 Duration timeOut=Duration(minutes: 1);
  if(dio==null){
   dio=Dio();
   dio!..options.connectTimeout=timeOut;
   dio!..options.receiveTimeout=timeOut;
   addDioHeaders();
   addInterceptor();
  }
  return dio;
  }
  
  static void addDioHeaders()async {
    dio?.options.headers={
  'x-api-key':'reqres=free-v1'
    };
  }
  
  static void addInterceptor() {
    dio?.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true
    )
    );
  }
}