import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_exception.freezed.dart';

@freezed
class AuthException with _$AuthException {
  const factory AuthException.serverError() = _ServerError;
  const factory AuthException.unAuthorized() = _UnAuthorized;
  const factory AuthException.unknown() = _Unknown;
  const factory AuthException.internetConnectionUnAvailable() =
      _InternetConnectionUnAvailable;
  const factory AuthException.wrongNicknameOrPassword() =
      _WrongNicknameOrPassword;
}
