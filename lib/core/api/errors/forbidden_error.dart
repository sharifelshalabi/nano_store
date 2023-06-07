import 'http_error.dart';

class ForbiddenError extends HttpError {
  @override
  String? message = 'خطأ محظور';
}
