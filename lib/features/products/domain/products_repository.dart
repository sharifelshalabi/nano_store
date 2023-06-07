import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:untitled1/features/login/data/login_request_model.dart';
import 'package:untitled1/features/products/presentation/pages/products_details.dart';

import '../../../core/api/core_models/base_result_model.dart';
import '../../../core/api/data_source/remote_data_source.dart';
import '../../../core/api/http/api_urls.dart';
import '../../../core/api/http/http_method.dart';
import '../data/products_list_model.dart';

class ProductsRepository {


  static Future<BaseResultModel?> getProducts( ) async {
    return await RemoteDataSource.request<ProductsResponseModel>(
        converter: (json) => ProductsResponseModel.fromJson(json!),
        method: HttpMethod.GET,
        withAuthentication: true,
        url: ApiURLs.getProductsURL);
  }

}