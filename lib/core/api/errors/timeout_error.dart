import 'connection_error.dart';

class TimeoutError extends ConnectionError {
  @override
  String? message = 'انتهت مهلة الاتصال';
}
