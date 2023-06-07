import 'http_error.dart';

class ConflictError extends HttpError {
  ConflictError();

  @override
  String? message = 'خطأ تعارض';
}
