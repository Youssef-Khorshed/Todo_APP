import 'package:dio/dio.dart';

class DioHelper{

  static Dio? dio;
  static intial()
  {
    dio = Dio(

      BaseOptions(
       baseUrl: 'https://newsapi.org/',
        receiveDataWhenStatusError:  true,
      )
    );
  }
  static  Future<Response>  getdata({required String url,required dynamic map})
  async {

      return await dio!.get(url, queryParameters: map);

  }


}