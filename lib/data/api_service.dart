import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ApiService extends GetxService {
  static ApiService get to => Get.find();

  /// 給外部app連線用
  late Dio dio;

  Future<ApiService> init() async {
    dio = Dio();
    dio.options.baseUrl = "http://localhost:8080";
    return this;
  }

  //
  // 以下是api
  //
  Future get(
    String path, {
    Map<String, dynamic>? query,
  }) async {
    final response = await dio.get(
      path,
      queryParameters: query,
    );
    return response.data;
  }

  Future getTvTypeMap() {
    return get('/app/getUrls');
  }

  Future getUrlsByType({
    required String type,
  }) {
    return get('/app/getUrls/$type');
  }
}
