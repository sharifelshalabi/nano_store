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