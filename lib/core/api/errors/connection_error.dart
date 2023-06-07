import 'base_error.dart';

class ConnectionError extends BaseError {
  @override
  String? message = 'خطأ اتصال';

  @override
  List<Object> get props => [];
}
