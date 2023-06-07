import './connection_error.dart';

class NetError extends ConnectionError {
  @override
  String? message = 'مشلكة في الإنترنت';
}
