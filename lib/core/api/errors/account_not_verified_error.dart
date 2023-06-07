import 'base_error.dart';

class AccountNotVerifiedError extends BaseError {
  @override
  List<Object> get props => [];

  @override
  String? message = 'لم يتم التحقق من الحساب';
}
