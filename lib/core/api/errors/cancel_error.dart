import 'base_error.dart';

class CancelError extends BaseError {
  List<Object> get props => [];

  @override
  String? message = 'خطأ إلغاء';
}
