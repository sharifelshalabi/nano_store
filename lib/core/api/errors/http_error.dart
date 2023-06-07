import './base_error.dart';

class HttpError extends BaseError {
  @override
  List<Object> get props => [];

  @override
  String? message = 'Http خطأ';
}
