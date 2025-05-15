// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String? get message => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? error, String? code)
        appFailure,
    required TResult Function(String? message, Object? error, String? code)
        deviceFailure,
    required TResult Function(String? message, Object? error, String? code)
        cacheFailure,
    required TResult Function(String? message, Object? error, String? code)
        serverFailure,
    required TResult Function(String? message, Object? error, String? code)
        dataParsingFailure,
    required TResult Function(String? message, Object? error, String? code)
        noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? error, String? code)? appFailure,
    TResult? Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult? Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult? Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult? Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult? Function(String? message, Object? error, String? code)?
        noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? error, String? code)? appFailure,
    TResult Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult Function(String? message, Object? error, String? code)?
        noConnectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppFailure value) appFailure,
    required TResult Function(DeviceFailure value) deviceFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppFailure value)? appFailure,
    TResult? Function(DeviceFailure value)? deviceFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppFailure value)? appFailure,
    TResult Function(DeviceFailure value)? deviceFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String? message, Object? error, String? code});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$AppFailureImplCopyWith(
          _$AppFailureImpl value, $Res Function(_$AppFailureImpl) then) =
      __$$AppFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Object? error, String? code});
}

/// @nodoc
class __$$AppFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AppFailureImpl>
    implements _$$AppFailureImplCopyWith<$Res> {
  __$$AppFailureImplCopyWithImpl(
      _$AppFailureImpl _value, $Res Function(_$AppFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? code = freezed,
  }) {
    return _then(_$AppFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppFailureImpl implements AppFailure {
  const _$AppFailureImpl({this.message, this.error, this.code});

  @override
  final String? message;
  @override
  final Object? error;
  @override
  final String? code;

  @override
  String toString() {
    return 'Failure.appFailure(message: $message, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error), code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppFailureImplCopyWith<_$AppFailureImpl> get copyWith =>
      __$$AppFailureImplCopyWithImpl<_$AppFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? error, String? code)
        appFailure,
    required TResult Function(String? message, Object? error, String? code)
        deviceFailure,
    required TResult Function(String? message, Object? error, String? code)
        cacheFailure,
    required TResult Function(String? message, Object? error, String? code)
        serverFailure,
    required TResult Function(String? message, Object? error, String? code)
        dataParsingFailure,
    required TResult Function(String? message, Object? error, String? code)
        noConnectionFailure,
  }) {
    return appFailure(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? error, String? code)? appFailure,
    TResult? Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult? Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult? Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult? Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult? Function(String? message, Object? error, String? code)?
        noConnectionFailure,
  }) {
    return appFailure?.call(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? error, String? code)? appFailure,
    TResult Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult Function(String? message, Object? error, String? code)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (appFailure != null) {
      return appFailure(message, error, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppFailure value) appFailure,
    required TResult Function(DeviceFailure value) deviceFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) {
    return appFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppFailure value)? appFailure,
    TResult? Function(DeviceFailure value)? deviceFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) {
    return appFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppFailure value)? appFailure,
    TResult Function(DeviceFailure value)? deviceFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (appFailure != null) {
      return appFailure(this);
    }
    return orElse();
  }
}

abstract class AppFailure implements Failure {
  const factory AppFailure(
      {final String? message,
      final Object? error,
      final String? code}) = _$AppFailureImpl;

  @override
  String? get message;
  @override
  Object? get error;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$AppFailureImplCopyWith<_$AppFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$DeviceFailureImplCopyWith(
          _$DeviceFailureImpl value, $Res Function(_$DeviceFailureImpl) then) =
      __$$DeviceFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Object? error, String? code});
}

/// @nodoc
class __$$DeviceFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DeviceFailureImpl>
    implements _$$DeviceFailureImplCopyWith<$Res> {
  __$$DeviceFailureImplCopyWithImpl(
      _$DeviceFailureImpl _value, $Res Function(_$DeviceFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? code = freezed,
  }) {
    return _then(_$DeviceFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeviceFailureImpl implements DeviceFailure {
  const _$DeviceFailureImpl({this.message, this.error, this.code});

  @override
  final String? message;
  @override
  final Object? error;
  @override
  final String? code;

  @override
  String toString() {
    return 'Failure.deviceFailure(message: $message, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error), code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceFailureImplCopyWith<_$DeviceFailureImpl> get copyWith =>
      __$$DeviceFailureImplCopyWithImpl<_$DeviceFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? error, String? code)
        appFailure,
    required TResult Function(String? message, Object? error, String? code)
        deviceFailure,
    required TResult Function(String? message, Object? error, String? code)
        cacheFailure,
    required TResult Function(String? message, Object? error, String? code)
        serverFailure,
    required TResult Function(String? message, Object? error, String? code)
        dataParsingFailure,
    required TResult Function(String? message, Object? error, String? code)
        noConnectionFailure,
  }) {
    return deviceFailure(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? error, String? code)? appFailure,
    TResult? Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult? Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult? Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult? Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult? Function(String? message, Object? error, String? code)?
        noConnectionFailure,
  }) {
    return deviceFailure?.call(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? error, String? code)? appFailure,
    TResult Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult Function(String? message, Object? error, String? code)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (deviceFailure != null) {
      return deviceFailure(message, error, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppFailure value) appFailure,
    required TResult Function(DeviceFailure value) deviceFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) {
    return deviceFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppFailure value)? appFailure,
    TResult? Function(DeviceFailure value)? deviceFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) {
    return deviceFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppFailure value)? appFailure,
    TResult Function(DeviceFailure value)? deviceFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (deviceFailure != null) {
      return deviceFailure(this);
    }
    return orElse();
  }
}

abstract class DeviceFailure implements Failure {
  const factory DeviceFailure(
      {final String? message,
      final Object? error,
      final String? code}) = _$DeviceFailureImpl;

  @override
  String? get message;
  @override
  Object? get error;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$DeviceFailureImplCopyWith<_$DeviceFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Object? error, String? code});
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? code = freezed,
  }) {
    return _then(_$CacheFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CacheFailureImpl implements CacheFailure {
  const _$CacheFailureImpl({this.message, this.error, this.code});

  @override
  final String? message;
  @override
  final Object? error;
  @override
  final String? code;

  @override
  String toString() {
    return 'Failure.cacheFailure(message: $message, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error), code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      __$$CacheFailureImplCopyWithImpl<_$CacheFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? error, String? code)
        appFailure,
    required TResult Function(String? message, Object? error, String? code)
        deviceFailure,
    required TResult Function(String? message, Object? error, String? code)
        cacheFailure,
    required TResult Function(String? message, Object? error, String? code)
        serverFailure,
    required TResult Function(String? message, Object? error, String? code)
        dataParsingFailure,
    required TResult Function(String? message, Object? error, String? code)
        noConnectionFailure,
  }) {
    return cacheFailure(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? error, String? code)? appFailure,
    TResult? Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult? Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult? Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult? Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult? Function(String? message, Object? error, String? code)?
        noConnectionFailure,
  }) {
    return cacheFailure?.call(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? error, String? code)? appFailure,
    TResult Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult Function(String? message, Object? error, String? code)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(message, error, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppFailure value) appFailure,
    required TResult Function(DeviceFailure value) deviceFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppFailure value)? appFailure,
    TResult? Function(DeviceFailure value)? deviceFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppFailure value)? appFailure,
    TResult Function(DeviceFailure value)? deviceFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure(
      {final String? message,
      final Object? error,
      final String? code}) = _$CacheFailureImpl;

  @override
  String? get message;
  @override
  Object? get error;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Object? error, String? code});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? code = freezed,
  }) {
    return _then(_$ServerFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl({this.message, this.error, this.code});

  @override
  final String? message;
  @override
  final Object? error;
  @override
  final String? code;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error), code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? error, String? code)
        appFailure,
    required TResult Function(String? message, Object? error, String? code)
        deviceFailure,
    required TResult Function(String? message, Object? error, String? code)
        cacheFailure,
    required TResult Function(String? message, Object? error, String? code)
        serverFailure,
    required TResult Function(String? message, Object? error, String? code)
        dataParsingFailure,
    required TResult Function(String? message, Object? error, String? code)
        noConnectionFailure,
  }) {
    return serverFailure(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? error, String? code)? appFailure,
    TResult? Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult? Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult? Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult? Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult? Function(String? message, Object? error, String? code)?
        noConnectionFailure,
  }) {
    return serverFailure?.call(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? error, String? code)? appFailure,
    TResult Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult Function(String? message, Object? error, String? code)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message, error, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppFailure value) appFailure,
    required TResult Function(DeviceFailure value) deviceFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppFailure value)? appFailure,
    TResult? Function(DeviceFailure value)? deviceFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppFailure value)? appFailure,
    TResult Function(DeviceFailure value)? deviceFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure(
      {final String? message,
      final Object? error,
      final String? code}) = _$ServerFailureImpl;

  @override
  String? get message;
  @override
  Object? get error;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataParsingFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$DataParsingFailureImplCopyWith(_$DataParsingFailureImpl value,
          $Res Function(_$DataParsingFailureImpl) then) =
      __$$DataParsingFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Object? error, String? code});
}

/// @nodoc
class __$$DataParsingFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DataParsingFailureImpl>
    implements _$$DataParsingFailureImplCopyWith<$Res> {
  __$$DataParsingFailureImplCopyWithImpl(_$DataParsingFailureImpl _value,
      $Res Function(_$DataParsingFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? code = freezed,
  }) {
    return _then(_$DataParsingFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DataParsingFailureImpl implements DataParsingFailure {
  const _$DataParsingFailureImpl({this.message, this.error, this.code});

  @override
  final String? message;
  @override
  final Object? error;
  @override
  final String? code;

  @override
  String toString() {
    return 'Failure.dataParsingFailure(message: $message, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataParsingFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error), code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataParsingFailureImplCopyWith<_$DataParsingFailureImpl> get copyWith =>
      __$$DataParsingFailureImplCopyWithImpl<_$DataParsingFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? error, String? code)
        appFailure,
    required TResult Function(String? message, Object? error, String? code)
        deviceFailure,
    required TResult Function(String? message, Object? error, String? code)
        cacheFailure,
    required TResult Function(String? message, Object? error, String? code)
        serverFailure,
    required TResult Function(String? message, Object? error, String? code)
        dataParsingFailure,
    required TResult Function(String? message, Object? error, String? code)
        noConnectionFailure,
  }) {
    return dataParsingFailure(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? error, String? code)? appFailure,
    TResult? Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult? Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult? Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult? Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult? Function(String? message, Object? error, String? code)?
        noConnectionFailure,
  }) {
    return dataParsingFailure?.call(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? error, String? code)? appFailure,
    TResult Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult Function(String? message, Object? error, String? code)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (dataParsingFailure != null) {
      return dataParsingFailure(message, error, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppFailure value) appFailure,
    required TResult Function(DeviceFailure value) deviceFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) {
    return dataParsingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppFailure value)? appFailure,
    TResult? Function(DeviceFailure value)? deviceFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) {
    return dataParsingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppFailure value)? appFailure,
    TResult Function(DeviceFailure value)? deviceFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (dataParsingFailure != null) {
      return dataParsingFailure(this);
    }
    return orElse();
  }
}

abstract class DataParsingFailure implements Failure {
  const factory DataParsingFailure(
      {final String? message,
      final Object? error,
      final String? code}) = _$DataParsingFailureImpl;

  @override
  String? get message;
  @override
  Object? get error;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$DataParsingFailureImplCopyWith<_$DataParsingFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NoConnectionFailureImplCopyWith(_$NoConnectionFailureImpl value,
          $Res Function(_$NoConnectionFailureImpl) then) =
      __$$NoConnectionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Object? error, String? code});
}

/// @nodoc
class __$$NoConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NoConnectionFailureImpl>
    implements _$$NoConnectionFailureImplCopyWith<$Res> {
  __$$NoConnectionFailureImplCopyWithImpl(_$NoConnectionFailureImpl _value,
      $Res Function(_$NoConnectionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? code = freezed,
  }) {
    return _then(_$NoConnectionFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error ? _value.error : error,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoConnectionFailureImpl implements NoConnectionFailure {
  const _$NoConnectionFailureImpl({this.message, this.error, this.code});

  @override
  final String? message;
  @override
  final Object? error;
  @override
  final String? code;

  @override
  String toString() {
    return 'Failure.noConnectionFailure(message: $message, error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnectionFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(error), code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoConnectionFailureImplCopyWith<_$NoConnectionFailureImpl> get copyWith =>
      __$$NoConnectionFailureImplCopyWithImpl<_$NoConnectionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, Object? error, String? code)
        appFailure,
    required TResult Function(String? message, Object? error, String? code)
        deviceFailure,
    required TResult Function(String? message, Object? error, String? code)
        cacheFailure,
    required TResult Function(String? message, Object? error, String? code)
        serverFailure,
    required TResult Function(String? message, Object? error, String? code)
        dataParsingFailure,
    required TResult Function(String? message, Object? error, String? code)
        noConnectionFailure,
  }) {
    return noConnectionFailure(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, Object? error, String? code)? appFailure,
    TResult? Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult? Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult? Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult? Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult? Function(String? message, Object? error, String? code)?
        noConnectionFailure,
  }) {
    return noConnectionFailure?.call(message, error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, Object? error, String? code)? appFailure,
    TResult Function(String? message, Object? error, String? code)?
        deviceFailure,
    TResult Function(String? message, Object? error, String? code)?
        cacheFailure,
    TResult Function(String? message, Object? error, String? code)?
        serverFailure,
    TResult Function(String? message, Object? error, String? code)?
        dataParsingFailure,
    TResult Function(String? message, Object? error, String? code)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure(message, error, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppFailure value) appFailure,
    required TResult Function(DeviceFailure value) deviceFailure,
    required TResult Function(CacheFailure value) cacheFailure,
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(DataParsingFailure value) dataParsingFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) {
    return noConnectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppFailure value)? appFailure,
    TResult? Function(DeviceFailure value)? deviceFailure,
    TResult? Function(CacheFailure value)? cacheFailure,
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(DataParsingFailure value)? dataParsingFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) {
    return noConnectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppFailure value)? appFailure,
    TResult Function(DeviceFailure value)? deviceFailure,
    TResult Function(CacheFailure value)? cacheFailure,
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(DataParsingFailure value)? dataParsingFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure(this);
    }
    return orElse();
  }
}

abstract class NoConnectionFailure implements Failure {
  const factory NoConnectionFailure(
      {final String? message,
      final Object? error,
      final String? code}) = _$NoConnectionFailureImpl;

  @override
  String? get message;
  @override
  Object? get error;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$NoConnectionFailureImplCopyWith<_$NoConnectionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
