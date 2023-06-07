import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../core_models/base_response_model.dart';
import '../core_models/base_result_model.dart';
import '../errors/errors.dart';

class ApiProvider {
  static Future<BaseResponseModel>
      sendObjectRequest<T extends BaseResultModel>({
    required T Function(Map<String, dynamic>?) converter,
    required String method,
    required String url,
    Map<String, dynamic>? data,
    Map<String, String?>? headers,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? files,
    CancelToken? cancelToken,
    bool isLongTime = false,
    bool uploadNotification = false,
    bool downloadNotification = false,
    int notificationId = 0,
  }) async {
    if (uploadNotification) downloadNotification = false;
    if (downloadNotification) uploadNotification = false;
    var baseOptions = BaseOptions(
      connectTimeout: isLongTime
          ? const Duration(milliseconds: 12000)
          : const Duration(milliseconds: 15000),
      sendTimeout: isLongTime
          ? const Duration(milliseconds: 12000)
          : const Duration(milliseconds: 15000),
      receiveTimeout: isLongTime
          ? const Duration(milliseconds: 12000)
          : const Duration(milliseconds: 15000),
    );

    Options options = Options(
      headers: headers,
      method: method,
      contentType: Headers.jsonContentType,
      receiveTimeout: isLongTime
          ? const Duration(milliseconds: 12000)
          : const Duration(milliseconds: 15000),
      sendTimeout: isLongTime
          ? const Duration(milliseconds: 12000)
          : const Duration(milliseconds: 15000),
    );

    if (files != null) {
      headers!.remove("Content-Type");
      data ??= {};

      await Future.forEach(files.entries, (MapEntry entry) async {
//        if (entry.value != null) {
//          data!.addAll({entry.key: await MultipartFile.fromFile(entry.value)});
//        }
//         if (entry.value is PlatformFile) {
//           PlatformFile f = entry.value;
//           data!.addAll({entry.key: await MultipartFile.fromFile(f.path!)});
//         } else {
          data!.addAll({entry.key: entry.value});
        // }
      });
    }
    try {
      Response response;

      Dio dio = Dio(baseOptions);
      dio.interceptors.add(PrettyDioLogger(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
      response = await dio.request(

          url,
          onSendProgress: (sent, total) {
      }, onReceiveProgress: (received, total) {

      },
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          data: files != null ? FormData.fromMap(data!) : data);
      // Get the decoded json
      Map<String, dynamic> decodedJson ={};

      if (response.data is String) {
        if (response.data.length == 0) {
          decodedJson = {"": ""};
        } else {
          decodedJson = json.decode(response.data);
        }
      }else if(response.data is List){
        Map<String, dynamic>?  data = {"items":response.data};
        decodedJson = data;
      }
      else {
        decodedJson = response.data;
      }
      debugPrint(decodedJson.toString());


      return BaseResponseModel.fromJson(json: decodedJson, fromJson: converter);
    }

    // Handling errors
    on DioError catch (e) {
      BaseError error = _handleDioError(e);
      dynamic json;
      debugPrint('DioErrorDioErrorDioError $error');
      if (e.response != null) {
        if (e.response!.data != null) {
          if (e.response!.data is! String) {
            debugPrint(e.response!.data.toString());
            json = e.response!.data;
          }
        }
      }

      return BaseResponseModel.fromJson(json: json, error: error);
    }

    // Couldn't reach out the server
    on SocketException catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      if (uploadNotification || downloadNotification) {

      }
      return BaseResponseModel.fromJson(error: (SocketError() as BaseError));
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      if (uploadNotification || downloadNotification) {
      }
      return BaseResponseModel.fromJson(error: SocketError() as BaseError);
    }
  }

  static BaseError _handleDioError(DioError error) {
    debugPrint('error.type = ${(error.type)}');
    if (error.type == DioErrorType.unknown ||
        error.type == DioErrorType.badResponse) {
      if (error is SocketException) SocketError();
      if (error.type == DioErrorType.badResponse) {
        if (error.response == null) return HttpError();
        switch (error.response!.statusCode) {
          case 400:
            return BadRequestError();
          case 401:
            return UnauthorizedError();
          case 403:
            return ForbiddenError();
          case 404:
            return NotFoundError();
          case 409:
            return ConflictError();
          case 500:
            return InternalServerError();
          default:
            return HttpError();
        }
      }
      return NetError();
    } else if (error.type == DioErrorType.connectionTimeout ||
        error.type == DioErrorType.sendTimeout ||
        error.type == DioErrorType.receiveTimeout) {
      return TimeoutError();
    } else if (error.type == DioErrorType.cancel) {
      return CancelError();
    } else {
      return UnknownError();
    }
  }
}
