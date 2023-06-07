import 'http_error.dart';

class InternalServerError extends HttpError {
  @override
  String? message = 'خطأ داخلي في الخادم';
}
