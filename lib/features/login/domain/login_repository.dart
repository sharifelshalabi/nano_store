import 'package:untitled1/features/login/data/login_request_model.dart';
import '../../../core/api/core_models/base_result_model.dart';
import '../../../core/api/data_source/remote_data_source.dart';
import '../../../core/api/http/api_urls.dart';
import '../../../core/api/http/http_method.dart';
import '../data/login_response_model.dart';

class LoginRepository {


  static Future<BaseResultModel?> login(LoginRequestModel loginRequestModel ) async {
    return await RemoteDataSource.request<LoginResponseModel>(
        converter: (json) => LoginResponseModel.fromJson(json!),
        method: HttpMethod.POST,
        withAuthentication: false,
        data: loginRequestModel.toJson(),
        url: ApiURLs.authenticateURL);

  }


}