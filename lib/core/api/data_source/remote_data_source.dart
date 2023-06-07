import 'package:dio/dio.dart';
import '../core_models/base_result_model.dart';
import '../errors/errors.dart';
import '../http/api_provider.dart';

class RemoteDataSource {
  static Future<BaseResultModel?> request<Response extends BaseResultModel>({
    required Response Function(Map<String, dynamic>? json) converter,
    required String method,
    required String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    Map<String, dynamic>? files,
    bool withAuthentication = true,
    CancelToken? cancelToken,
    bool isLongTime = false,
    bool uploadNotification = false,
    bool downloadNotification = false,
    int notificationId = 0,
  }) async {
    Map<String, String?> headers = {
      "Content-Type": "application/json",
      "accept": "application/json",
      "Access-Control-Allow-Origin": "*",
    };


    // Send the request.
    final response = await ApiProvider.sendObjectRequest<Response>(
      notificationId: notificationId,
      downloadNotification: downloadNotification,
      uploadNotification: uploadNotification,
      method: method,
      url: url,
      converter: converter,
      headers: headers,
      queryParameters: queryParameters ?? {},
      data: data ?? {},
      files: files,
      isLongTime: isLongTime,
      cancelToken: cancelToken,
    );

    if (response.isOk!) {
      return response.universityModel;
    } else {
      if (response.message != null) {
        if (response.error is UnauthorizedError) {

          // logOut();
        }
        return response.message!;
      } else {
        if (response.error is UnauthorizedError) {

          // logOut();
        }
        return response.error;
      }
    }
  }


}
