import 'package:dio/dio.dart';
import 'package:islami/api/api_constant.dart';
import 'package:islami/models/radios_model.dart';

abstract class ApiManger {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoint.bseUrl,
    ),
  );

  static Future<List<RadiosModel>> getRadios() async {
    try {
      var response = await _dio.get(ApiEndpoint.radios);

      if (response.statusCode == 200) {
        return RadioListModel.fromJson(response.data).radios ?? [];
      } else {
        throw Exception('فشل في جلب البيانات: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('خطأ في الشبكة: ${e.message}');
    } catch (e) {
      throw Exception('حدث خطأ غير متوقع: $e');
    }
  }
}
