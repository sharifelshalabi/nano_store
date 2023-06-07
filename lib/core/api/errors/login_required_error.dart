import 'base_error.dart';

class LoginRequiredError extends BaseError {
  @override
  List<Object> get props => [];

  @override
  String? message = 'تسجيل الدخول المطلوب';
}
