import 'connection_error.dart';

class UnknownError extends ConnectionError {
  @override
  String? message = 'خطأ غير معروف';
}
