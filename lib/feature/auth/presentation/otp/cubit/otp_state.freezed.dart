// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isResend) loading,
    required TResult Function(UserEntity user) success,
    required TResult Function() succesResend,
    required TResult Function(ErrorObject error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isResend)? loading,
    TResult? Function(UserEntity user)? success,
    TResult? Function()? succesResend,
    TResult? Function(ErrorObject error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isResend)? loading,
    TResult Function(UserEntity user)? success,
    TResult Function()? succesResend,
    TResult Function(ErrorObject error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_successResend value) succesResend,
    required TResult Function(_error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_successResend value)? succesResend,
    TResult? Function(_error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_successResend value)? succesResend,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'OtpState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isResend) loading,
    required TResult Function(UserEntity user) success,
    required TResult Function() succesResend,
    required TResult Function(ErrorObject error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isResend)? loading,
    TResult? Function(UserEntity user)? success,
    TResult? Function()? succesResend,
    TResult? Function(ErrorObject error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isResend)? loading,
    TResult Function(UserEntity user)? success,
    TResult Function()? succesResend,
    TResult Function(ErrorObject error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_successResend value) succesResend,
    required TResult Function(_error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_successResend value)? succesResend,
    TResult? Function(_error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_successResend value)? succesResend,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends OtpState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isResend});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isResend = freezed,
  }) {
    return _then(_$LoadingImpl(
      isResend: freezed == isResend
          ? _value.isResend
          : isResend // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl({this.isResend}) : super._();

  @override
  final bool? isResend;

  @override
  String toString() {
    return 'OtpState.loading(isResend: $isResend)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.isResend, isResend) ||
                other.isResend == isResend));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isResend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isResend) loading,
    required TResult Function(UserEntity user) success,
    required TResult Function() succesResend,
    required TResult Function(ErrorObject error) error,
  }) {
    return loading(isResend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isResend)? loading,
    TResult? Function(UserEntity user)? success,
    TResult? Function()? succesResend,
    TResult? Function(ErrorObject error)? error,
  }) {
    return loading?.call(isResend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isResend)? loading,
    TResult Function(UserEntity user)? success,
    TResult Function()? succesResend,
    TResult Function(ErrorObject error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isResend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_successResend value) succesResend,
    required TResult Function(_error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_successResend value)? succesResend,
    TResult? Function(_error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_successResend value)? succesResend,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends OtpState {
  const factory _Loading({final bool? isResend}) = _$LoadingImpl;
  const _Loading._() : super._();

  bool? get isResend;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successImplCopyWith<$Res> {
  factory _$$successImplCopyWith(
          _$successImpl value, $Res Function(_$successImpl) then) =
      __$$successImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$successImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$successImpl>
    implements _$$successImplCopyWith<$Res> {
  __$$successImplCopyWithImpl(
      _$successImpl _value, $Res Function(_$successImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$successImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$successImpl extends _success {
  const _$successImpl(this.user) : super._();

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'OtpState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      __$$successImplCopyWithImpl<_$successImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isResend) loading,
    required TResult Function(UserEntity user) success,
    required TResult Function() succesResend,
    required TResult Function(ErrorObject error) error,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isResend)? loading,
    TResult? Function(UserEntity user)? success,
    TResult? Function()? succesResend,
    TResult? Function(ErrorObject error)? error,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isResend)? loading,
    TResult Function(UserEntity user)? success,
    TResult Function()? succesResend,
    TResult Function(ErrorObject error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_successResend value) succesResend,
    required TResult Function(_error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_successResend value)? succesResend,
    TResult? Function(_error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_successResend value)? succesResend,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success extends OtpState {
  const factory _success(final UserEntity user) = _$successImpl;
  const _success._() : super._();

  UserEntity get user;
  @JsonKey(ignore: true)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successResendImplCopyWith<$Res> {
  factory _$$successResendImplCopyWith(
          _$successResendImpl value, $Res Function(_$successResendImpl) then) =
      __$$successResendImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$successResendImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$successResendImpl>
    implements _$$successResendImplCopyWith<$Res> {
  __$$successResendImplCopyWithImpl(
      _$successResendImpl _value, $Res Function(_$successResendImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$successResendImpl extends _successResend {
  const _$successResendImpl() : super._();

  @override
  String toString() {
    return 'OtpState.succesResend()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$successResendImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isResend) loading,
    required TResult Function(UserEntity user) success,
    required TResult Function() succesResend,
    required TResult Function(ErrorObject error) error,
  }) {
    return succesResend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isResend)? loading,
    TResult? Function(UserEntity user)? success,
    TResult? Function()? succesResend,
    TResult? Function(ErrorObject error)? error,
  }) {
    return succesResend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isResend)? loading,
    TResult Function(UserEntity user)? success,
    TResult Function()? succesResend,
    TResult Function(ErrorObject error)? error,
    required TResult orElse(),
  }) {
    if (succesResend != null) {
      return succesResend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_successResend value) succesResend,
    required TResult Function(_error value) error,
  }) {
    return succesResend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_successResend value)? succesResend,
    TResult? Function(_error value)? error,
  }) {
    return succesResend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_successResend value)? succesResend,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (succesResend != null) {
      return succesResend(this);
    }
    return orElse();
  }
}

abstract class _successResend extends OtpState {
  const factory _successResend() = _$successResendImpl;
  const _successResend._() : super._();
}

/// @nodoc
abstract class _$$errorImplCopyWith<$Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl value, $Res Function(_$errorImpl) then) =
      __$$errorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorObject error});

  $ErrorObjectCopyWith<$Res> get error;
}

/// @nodoc
class __$$errorImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$errorImpl>
    implements _$$errorImplCopyWith<$Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl _value, $Res Function(_$errorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$errorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorObject,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorObjectCopyWith<$Res> get error {
    return $ErrorObjectCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$errorImpl extends _error {
  const _$errorImpl(this.error) : super._();

  @override
  final ErrorObject error;

  @override
  String toString() {
    return 'OtpState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      __$$errorImplCopyWithImpl<_$errorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isResend) loading,
    required TResult Function(UserEntity user) success,
    required TResult Function() succesResend,
    required TResult Function(ErrorObject error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isResend)? loading,
    TResult? Function(UserEntity user)? success,
    TResult? Function()? succesResend,
    TResult? Function(ErrorObject error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isResend)? loading,
    TResult Function(UserEntity user)? success,
    TResult Function()? succesResend,
    TResult Function(ErrorObject error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_success value) success,
    required TResult Function(_successResend value) succesResend,
    required TResult Function(_error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_success value)? success,
    TResult? Function(_successResend value)? succesResend,
    TResult? Function(_error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_success value)? success,
    TResult Function(_successResend value)? succesResend,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error extends OtpState {
  const factory _error(final ErrorObject error) = _$errorImpl;
  const _error._() : super._();

  ErrorObject get error;
  @JsonKey(ignore: true)
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
