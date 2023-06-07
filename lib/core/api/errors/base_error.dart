import '../core_models/base_result_model.dart';

class BaseError extends BaseResultModel {
  String? message = 'خطأ أساسي';

  BaseError({this.message});
}
