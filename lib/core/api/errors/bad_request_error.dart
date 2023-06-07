import 'http_error.dart';

class BadRequestError extends HttpError {
  @override
  String? message = 'طلب غير صالح';

  BadRequestError();
}
