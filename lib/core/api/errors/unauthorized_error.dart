import './http_error.dart';

class UnauthorizedError extends HttpError {
  @override
  String? message = 'خطأ غير مصرح به';
}
