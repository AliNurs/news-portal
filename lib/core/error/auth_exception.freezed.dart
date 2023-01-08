// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unknown,
    required TResult Function() internetConnectionUnAvailable,
    required TResult Function() wrongNicknameOrPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unknown,
    TResult? Function()? internetConnectionUnAvailable,
    TResult? Function()? wrongNicknameOrPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unknown,
    TResult Function()? internetConnectionUnAvailable,
    TResult Function()? wrongNicknameOrPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternetConnectionUnAvailable value)
        internetConnectionUnAvailable,
    required TResult Function(_WrongNicknameOrPassword value)
        wrongNicknameOrPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult? Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthExceptionCopyWith<$Res> {
  factory $AuthExceptionCopyWith(
          AuthException value, $Res Function(AuthException) then) =
      _$AuthExceptionCopyWithImpl<$Res, AuthException>;
}

/// @nodoc
class _$AuthExceptionCopyWithImpl<$Res, $Val extends AuthException>
    implements $AuthExceptionCopyWith<$Res> {
  _$AuthExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'AuthException.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unknown,
    required TResult Function() internetConnectionUnAvailable,
    required TResult Function() wrongNicknameOrPassword,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unknown,
    TResult? Function()? internetConnectionUnAvailable,
    TResult? Function()? wrongNicknameOrPassword,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unknown,
    TResult Function()? internetConnectionUnAvailable,
    TResult Function()? wrongNicknameOrPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternetConnectionUnAvailable value)
        internetConnectionUnAvailable,
    required TResult Function(_WrongNicknameOrPassword value)
        wrongNicknameOrPassword,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult? Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthException {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$$_UnAuthorizedCopyWith<$Res> {
  factory _$$_UnAuthorizedCopyWith(
          _$_UnAuthorized value, $Res Function(_$_UnAuthorized) then) =
      __$$_UnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthorizedCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$_UnAuthorized>
    implements _$$_UnAuthorizedCopyWith<$Res> {
  __$$_UnAuthorizedCopyWithImpl(
      _$_UnAuthorized _value, $Res Function(_$_UnAuthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnAuthorized implements _UnAuthorized {
  const _$_UnAuthorized();

  @override
  String toString() {
    return 'AuthException.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unknown,
    required TResult Function() internetConnectionUnAvailable,
    required TResult Function() wrongNicknameOrPassword,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unknown,
    TResult? Function()? internetConnectionUnAvailable,
    TResult? Function()? wrongNicknameOrPassword,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unknown,
    TResult Function()? internetConnectionUnAvailable,
    TResult Function()? wrongNicknameOrPassword,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternetConnectionUnAvailable value)
        internetConnectionUnAvailable,
    required TResult Function(_WrongNicknameOrPassword value)
        wrongNicknameOrPassword,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult? Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements AuthException {
  const factory _UnAuthorized() = _$_UnAuthorized;
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$_Unknown>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'AuthException.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unknown,
    required TResult Function() internetConnectionUnAvailable,
    required TResult Function() wrongNicknameOrPassword,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unknown,
    TResult? Function()? internetConnectionUnAvailable,
    TResult? Function()? wrongNicknameOrPassword,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unknown,
    TResult Function()? internetConnectionUnAvailable,
    TResult Function()? wrongNicknameOrPassword,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternetConnectionUnAvailable value)
        internetConnectionUnAvailable,
    required TResult Function(_WrongNicknameOrPassword value)
        wrongNicknameOrPassword,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult? Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements AuthException {
  const factory _Unknown() = _$_Unknown;
}

/// @nodoc
abstract class _$$_InternetConnectionUnAvailableCopyWith<$Res> {
  factory _$$_InternetConnectionUnAvailableCopyWith(
          _$_InternetConnectionUnAvailable value,
          $Res Function(_$_InternetConnectionUnAvailable) then) =
      __$$_InternetConnectionUnAvailableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InternetConnectionUnAvailableCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$_InternetConnectionUnAvailable>
    implements _$$_InternetConnectionUnAvailableCopyWith<$Res> {
  __$$_InternetConnectionUnAvailableCopyWithImpl(
      _$_InternetConnectionUnAvailable _value,
      $Res Function(_$_InternetConnectionUnAvailable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InternetConnectionUnAvailable
    implements _InternetConnectionUnAvailable {
  const _$_InternetConnectionUnAvailable();

  @override
  String toString() {
    return 'AuthException.internetConnectionUnAvailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InternetConnectionUnAvailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unknown,
    required TResult Function() internetConnectionUnAvailable,
    required TResult Function() wrongNicknameOrPassword,
  }) {
    return internetConnectionUnAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unknown,
    TResult? Function()? internetConnectionUnAvailable,
    TResult? Function()? wrongNicknameOrPassword,
  }) {
    return internetConnectionUnAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unknown,
    TResult Function()? internetConnectionUnAvailable,
    TResult Function()? wrongNicknameOrPassword,
    required TResult orElse(),
  }) {
    if (internetConnectionUnAvailable != null) {
      return internetConnectionUnAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternetConnectionUnAvailable value)
        internetConnectionUnAvailable,
    required TResult Function(_WrongNicknameOrPassword value)
        wrongNicknameOrPassword,
  }) {
    return internetConnectionUnAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult? Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
  }) {
    return internetConnectionUnAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
    required TResult orElse(),
  }) {
    if (internetConnectionUnAvailable != null) {
      return internetConnectionUnAvailable(this);
    }
    return orElse();
  }
}

abstract class _InternetConnectionUnAvailable implements AuthException {
  const factory _InternetConnectionUnAvailable() =
      _$_InternetConnectionUnAvailable;
}

/// @nodoc
abstract class _$$_WrongNicknameOrPasswordCopyWith<$Res> {
  factory _$$_WrongNicknameOrPasswordCopyWith(_$_WrongNicknameOrPassword value,
          $Res Function(_$_WrongNicknameOrPassword) then) =
      __$$_WrongNicknameOrPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WrongNicknameOrPasswordCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$_WrongNicknameOrPassword>
    implements _$$_WrongNicknameOrPasswordCopyWith<$Res> {
  __$$_WrongNicknameOrPasswordCopyWithImpl(_$_WrongNicknameOrPassword _value,
      $Res Function(_$_WrongNicknameOrPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WrongNicknameOrPassword implements _WrongNicknameOrPassword {
  const _$_WrongNicknameOrPassword();

  @override
  String toString() {
    return 'AuthException.wrongNicknameOrPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WrongNicknameOrPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() unknown,
    required TResult Function() internetConnectionUnAvailable,
    required TResult Function() wrongNicknameOrPassword,
  }) {
    return wrongNicknameOrPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unAuthorized,
    TResult? Function()? unknown,
    TResult? Function()? internetConnectionUnAvailable,
    TResult? Function()? wrongNicknameOrPassword,
  }) {
    return wrongNicknameOrPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? unknown,
    TResult Function()? internetConnectionUnAvailable,
    TResult Function()? wrongNicknameOrPassword,
    required TResult orElse(),
  }) {
    if (wrongNicknameOrPassword != null) {
      return wrongNicknameOrPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_InternetConnectionUnAvailable value)
        internetConnectionUnAvailable,
    required TResult Function(_WrongNicknameOrPassword value)
        wrongNicknameOrPassword,
  }) {
    return wrongNicknameOrPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnAuthorized value)? unAuthorized,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult? Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
  }) {
    return wrongNicknameOrPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_InternetConnectionUnAvailable value)?
        internetConnectionUnAvailable,
    TResult Function(_WrongNicknameOrPassword value)? wrongNicknameOrPassword,
    required TResult orElse(),
  }) {
    if (wrongNicknameOrPassword != null) {
      return wrongNicknameOrPassword(this);
    }
    return orElse();
  }
}

abstract class _WrongNicknameOrPassword implements AuthException {
  const factory _WrongNicknameOrPassword() = _$_WrongNicknameOrPassword;
}
