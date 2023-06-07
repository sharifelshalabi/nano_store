import 'base_error.dart';

class CustomError extends BaseError {
  @override
  String? message = 'خطأ مخصص';

  CustomError({this.message});

  @override
  List<Object> get props => [];
}
