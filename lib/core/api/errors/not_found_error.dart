import './http_error.dart';

class NotFoundError extends HttpError {
  @override
  String? message = 'خطأ غير موجود';
}
