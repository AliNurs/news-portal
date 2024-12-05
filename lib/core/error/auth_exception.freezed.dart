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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'AuthException.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
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
  const factory _ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$UnAuthorizedImplCopyWith<$Res> {
  factory _$$UnAuthorizedImplCopyWith(
          _$UnAuthorizedImpl value, $Res Function(_$UnAuthorizedImpl) then) =
      __$$UnAuthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthorizedImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$UnAuthorizedImpl>
    implements _$$UnAuthorizedImplCopyWith<$Res> {
  __$$UnAuthorizedImplCopyWithImpl(
      _$UnAuthorizedImpl _value, $Res Function(_$UnAuthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthorizedImpl implements _UnAuthorized {
  const _$UnAuthorizedImpl();

  @override
  String toString() {
    return 'AuthException.unAuthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthorizedImpl);
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
  const factory _UnAuthorized() = _$UnAuthorizedImpl;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  const _$UnknownImpl();

  @override
  String toString() {
    return 'AuthException.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownImpl);
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
  const factory _Unknown() = _$UnknownImpl;
}

/// @nodoc
abstract class _$$InternetConnectionUnAvailableImplCopyWith<$Res> {
  factory _$$InternetConnectionUnAvailableImplCopyWith(
          _$InternetConnectionUnAvailableImpl value,
          $Res Function(_$InternetConnectionUnAvailableImpl) then) =
      __$$InternetConnectionUnAvailableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternetConnectionUnAvailableImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res,
        _$InternetConnectionUnAvailableImpl>
    implements _$$InternetConnectionUnAvailableImplCopyWith<$Res> {
  __$$InternetConnectionUnAvailableImplCopyWithImpl(
      _$InternetConnectionUnAvailableImpl _value,
      $Res Function(_$InternetConnectionUnAvailableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InternetConnectionUnAvailableImpl
    implements _InternetConnectionUnAvailable {
  const _$InternetConnectionUnAvailableImpl();

  @override
  String toString() {
    return 'AuthException.internetConnectionUnAvailable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetConnectionUnAvailableImpl);
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
      _$InternetConnectionUnAvailableImpl;
}

/// @nodoc
abstract class _$$WrongNicknameOrPasswordImplCopyWith<$Res> {
  factory _$$WrongNicknameOrPasswordImplCopyWith(
          _$WrongNicknameOrPasswordImpl value,
          $Res Function(_$WrongNicknameOrPasswordImpl) then) =
      __$$WrongNicknameOrPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WrongNicknameOrPasswordImplCopyWithImpl<$Res>
    extends _$AuthExceptionCopyWithImpl<$Res, _$WrongNicknameOrPasswordImpl>
    implements _$$WrongNicknameOrPasswordImplCopyWith<$Res> {
  __$$WrongNicknameOrPasswordImplCopyWithImpl(
      _$WrongNicknameOrPasswordImpl _value,
      $Res Function(_$WrongNicknameOrPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WrongNicknameOrPasswordImpl implements _WrongNicknameOrPassword {
  const _$WrongNicknameOrPasswordImpl();

  @override
  String toString() {
    return 'AuthException.wrongNicknameOrPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WrongNicknameOrPasswordImpl);
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
  const factory _WrongNicknameOrPassword() = _$WrongNicknameOrPasswordImpl;
}
