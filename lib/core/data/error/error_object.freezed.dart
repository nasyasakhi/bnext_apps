// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ErrorObject {
  String? get errorMessage => throw _privateConstructorUsedError;
  Object? get errorObject => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get readableMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        $default, {
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        appFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        cacheFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        deviceFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        serverFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        dataParsingFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorObject value) $default, {
    required TResult Function(ErrorObjectApp value) appFailure,
    required TResult Function(ErrorObjectCache value) cacheFailure,
    required TResult Function(ErrorObjectDevice value) deviceFailure,
    required TResult Function(ErrorObjectServer value) serverFailure,
    required TResult Function(ErrorObjectDataParsing value) dataParsingFailure,
    required TResult Function(ErrorObjectNoConnection value)
        noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ErrorObject value)? $default, {
    TResult? Function(ErrorObjectApp value)? appFailure,
    TResult? Function(ErrorObjectCache value)? cacheFailure,
    TResult? Function(ErrorObjectDevice value)? deviceFailure,
    TResult? Function(ErrorObjectServer value)? serverFailure,
    TResult? Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult? Function(ErrorObjectNoConnection value)? noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorObject value)? $default, {
    TResult Function(ErrorObjectApp value)? appFailure,
    TResult Function(ErrorObjectCache value)? cacheFailure,
    TResult Function(ErrorObjectDevice value)? deviceFailure,
    TResult Function(ErrorObjectServer value)? serverFailure,
    TResult Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult Function(ErrorObjectNoConnection value)? noConnectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorObjectCopyWith<ErrorObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorObjectCopyWith<$Res> {
  factory $ErrorObjectCopyWith(
          ErrorObject value, $Res Function(ErrorObject) then) =
      _$ErrorObjectCopyWithImpl<$Res, ErrorObject>;
  @useResult
  $Res call(
      {String? errorMessage,
      Object? errorObject,
      String? errorCode,
      String title,
      String readableMessage});
}

/// @nodoc
class _$ErrorObjectCopyWithImpl<$Res, $Val extends ErrorObject>
    implements $ErrorObjectCopyWith<$Res> {
  _$ErrorObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? errorObject = freezed,
    Object? errorCode = freezed,
    Object? title = null,
    Object? readableMessage = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorObject: freezed == errorObject ? _value.errorObject : errorObject,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readableMessage: null == readableMessage
          ? _value.readableMessage
          : readableMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorObjectImplCopyWith<$Res>
    implements $ErrorObjectCopyWith<$Res> {
  factory _$$ErrorObjectImplCopyWith(
          _$ErrorObjectImpl value, $Res Function(_$ErrorObjectImpl) then) =
      __$$ErrorObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      Object? errorObject,
      String? errorCode,
      String title,
      String readableMessage});
}

/// @nodoc
class __$$ErrorObjectImplCopyWithImpl<$Res>
    extends _$ErrorObjectCopyWithImpl<$Res, _$ErrorObjectImpl>
    implements _$$ErrorObjectImplCopyWith<$Res> {
  __$$ErrorObjectImplCopyWithImpl(
      _$ErrorObjectImpl _value, $Res Function(_$ErrorObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? errorObject = freezed,
    Object? errorCode = freezed,
    Object? title = null,
    Object? readableMessage = null,
  }) {
    return _then(_$ErrorObjectImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorObject: freezed == errorObject ? _value.errorObject : errorObject,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readableMessage: null == readableMessage
          ? _value.readableMessage
          : readableMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorObjectImpl extends _ErrorObject {
  const _$ErrorObjectImpl(
      {this.errorMessage,
      this.errorObject,
      this.errorCode,
      required this.title,
      required this.readableMessage})
      : super._();

  @override
  final String? errorMessage;
  @override
  final Object? errorObject;
  @override
  final String? errorCode;
  @override
  final String title;
  @override
  final String readableMessage;

  @override
  String toString() {
    return 'ErrorObject(errorMessage: $errorMessage, errorObject: $errorObject, errorCode: $errorCode, title: $title, readableMessage: $readableMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorObjectImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.errorObject, errorObject) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readableMessage, readableMessage) ||
                other.readableMessage == readableMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      const DeepCollectionEquality().hash(errorObject),
      errorCode,
      title,
      readableMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorObjectImplCopyWith<_$ErrorObjectImpl> get copyWith =>
      __$$ErrorObjectImplCopyWithImpl<_$ErrorObjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        $default, {
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        appFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        cacheFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        deviceFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        serverFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        dataParsingFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        noConnectionFailure,
  }) {
    return $default(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
  }) {
    return $default?.call(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          errorMessage, errorObject, errorCode, title, readableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorObject value) $default, {
    required TResult Function(ErrorObjectApp value) appFailure,
    required TResult Function(ErrorObjectCache value) cacheFailure,
    required TResult Function(ErrorObjectDevice value) deviceFailure,
    required TResult Function(ErrorObjectServer value) serverFailure,
    required TResult Function(ErrorObjectDataParsing value) dataParsingFailure,
    required TResult Function(ErrorObjectNoConnection value)
        noConnectionFailure,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ErrorObject value)? $default, {
    TResult? Function(ErrorObjectApp value)? appFailure,
    TResult? Function(ErrorObjectCache value)? cacheFailure,
    TResult? Function(ErrorObjectDevice value)? deviceFailure,
    TResult? Function(ErrorObjectServer value)? serverFailure,
    TResult? Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult? Function(ErrorObjectNoConnection value)? noConnectionFailure,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorObject value)? $default, {
    TResult Function(ErrorObjectApp value)? appFailure,
    TResult Function(ErrorObjectCache value)? cacheFailure,
    TResult Function(ErrorObjectDevice value)? deviceFailure,
    TResult Function(ErrorObjectServer value)? serverFailure,
    TResult Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult Function(ErrorObjectNoConnection value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ErrorObject extends ErrorObject {
  const factory _ErrorObject(
      {final String? errorMessage,
      final Object? errorObject,
      final String? errorCode,
      required final String title,
      required final String readableMessage}) = _$ErrorObjectImpl;
  const _ErrorObject._() : super._();

  @override
  String? get errorMessage;
  @override
  Object? get errorObject;
  @override
  String? get errorCode;
  @override
  String get title;
  @override
  String get readableMessage;
  @override
  @JsonKey(ignore: true)
  _$$ErrorObjectImplCopyWith<_$ErrorObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorObjectAppImplCopyWith<$Res>
    implements $ErrorObjectCopyWith<$Res> {
  factory _$$ErrorObjectAppImplCopyWith(_$ErrorObjectAppImpl value,
          $Res Function(_$ErrorObjectAppImpl) then) =
      __$$ErrorObjectAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      Object? errorObject,
      String? errorCode,
      String title,
      String readableMessage});
}

/// @nodoc
class __$$ErrorObjectAppImplCopyWithImpl<$Res>
    extends _$ErrorObjectCopyWithImpl<$Res, _$ErrorObjectAppImpl>
    implements _$$ErrorObjectAppImplCopyWith<$Res> {
  __$$ErrorObjectAppImplCopyWithImpl(
      _$ErrorObjectAppImpl _value, $Res Function(_$ErrorObjectAppImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? errorObject = freezed,
    Object? errorCode = freezed,
    Object? title = null,
    Object? readableMessage = null,
  }) {
    return _then(_$ErrorObjectAppImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorObject: freezed == errorObject ? _value.errorObject : errorObject,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readableMessage: null == readableMessage
          ? _value.readableMessage
          : readableMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorObjectAppImpl extends ErrorObjectApp {
  const _$ErrorObjectAppImpl(
      {this.errorMessage,
      this.errorObject,
      this.errorCode,
      this.title = 'Error Code: INTERNAL_FAILURE',
      this.readableMessage = 'There was an internal error, try again later, '
          'should the issue persist please reach out to the developer at aurell.ghania.ramadhani@gmail.com'})
      : super._();

  @override
  final String? errorMessage;
  @override
  final Object? errorObject;
  @override
  final String? errorCode;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String readableMessage;

  @override
  String toString() {
    return 'ErrorObject.appFailure(errorMessage: $errorMessage, errorObject: $errorObject, errorCode: $errorCode, title: $title, readableMessage: $readableMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorObjectAppImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.errorObject, errorObject) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readableMessage, readableMessage) ||
                other.readableMessage == readableMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      const DeepCollectionEquality().hash(errorObject),
      errorCode,
      title,
      readableMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorObjectAppImplCopyWith<_$ErrorObjectAppImpl> get copyWith =>
      __$$ErrorObjectAppImplCopyWithImpl<_$ErrorObjectAppImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        $default, {
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        appFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        cacheFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        deviceFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        serverFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        dataParsingFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        noConnectionFailure,
  }) {
    return appFailure(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
  }) {
    return appFailure?.call(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (appFailure != null) {
      return appFailure(
          errorMessage, errorObject, errorCode, title, readableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorObject value) $default, {
    required TResult Function(ErrorObjectApp value) appFailure,
    required TResult Function(ErrorObjectCache value) cacheFailure,
    required TResult Function(ErrorObjectDevice value) deviceFailure,
    required TResult Function(ErrorObjectServer value) serverFailure,
    required TResult Function(ErrorObjectDataParsing value) dataParsingFailure,
    required TResult Function(ErrorObjectNoConnection value)
        noConnectionFailure,
  }) {
    return appFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ErrorObject value)? $default, {
    TResult? Function(ErrorObjectApp value)? appFailure,
    TResult? Function(ErrorObjectCache value)? cacheFailure,
    TResult? Function(ErrorObjectDevice value)? deviceFailure,
    TResult? Function(ErrorObjectServer value)? serverFailure,
    TResult? Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult? Function(ErrorObjectNoConnection value)? noConnectionFailure,
  }) {
    return appFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorObject value)? $default, {
    TResult Function(ErrorObjectApp value)? appFailure,
    TResult Function(ErrorObjectCache value)? cacheFailure,
    TResult Function(ErrorObjectDevice value)? deviceFailure,
    TResult Function(ErrorObjectServer value)? serverFailure,
    TResult Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult Function(ErrorObjectNoConnection value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (appFailure != null) {
      return appFailure(this);
    }
    return orElse();
  }
}

abstract class ErrorObjectApp extends ErrorObject {
  const factory ErrorObjectApp(
      {final String? errorMessage,
      final Object? errorObject,
      final String? errorCode,
      final String title,
      final String readableMessage}) = _$ErrorObjectAppImpl;
  const ErrorObjectApp._() : super._();

  @override
  String? get errorMessage;
  @override
  Object? get errorObject;
  @override
  String? get errorCode;
  @override
  String get title;
  @override
  String get readableMessage;
  @override
  @JsonKey(ignore: true)
  _$$ErrorObjectAppImplCopyWith<_$ErrorObjectAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorObjectCacheImplCopyWith<$Res>
    implements $ErrorObjectCopyWith<$Res> {
  factory _$$ErrorObjectCacheImplCopyWith(_$ErrorObjectCacheImpl value,
          $Res Function(_$ErrorObjectCacheImpl) then) =
      __$$ErrorObjectCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      Object? errorObject,
      String? errorCode,
      String title,
      String readableMessage});
}

/// @nodoc
class __$$ErrorObjectCacheImplCopyWithImpl<$Res>
    extends _$ErrorObjectCopyWithImpl<$Res, _$ErrorObjectCacheImpl>
    implements _$$ErrorObjectCacheImplCopyWith<$Res> {
  __$$ErrorObjectCacheImplCopyWithImpl(_$ErrorObjectCacheImpl _value,
      $Res Function(_$ErrorObjectCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? errorObject = freezed,
    Object? errorCode = freezed,
    Object? title = null,
    Object? readableMessage = null,
  }) {
    return _then(_$ErrorObjectCacheImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorObject: freezed == errorObject ? _value.errorObject : errorObject,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readableMessage: null == readableMessage
          ? _value.readableMessage
          : readableMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorObjectCacheImpl extends ErrorObjectCache {
  const _$ErrorObjectCacheImpl(
      {this.errorMessage,
      this.errorObject,
      this.errorCode,
      this.title = 'Error Code: INTERNAL_CACHE_FAILURE',
      this.readableMessage =
          'There was an internal error on cache, try again later, '
              'should the issue persist please reach out to the developer at aurell.ghania.ramadhani@gmail.com'})
      : super._();

  @override
  final String? errorMessage;
  @override
  final Object? errorObject;
  @override
  final String? errorCode;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String readableMessage;

  @override
  String toString() {
    return 'ErrorObject.cacheFailure(errorMessage: $errorMessage, errorObject: $errorObject, errorCode: $errorCode, title: $title, readableMessage: $readableMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorObjectCacheImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.errorObject, errorObject) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readableMessage, readableMessage) ||
                other.readableMessage == readableMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      const DeepCollectionEquality().hash(errorObject),
      errorCode,
      title,
      readableMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorObjectCacheImplCopyWith<_$ErrorObjectCacheImpl> get copyWith =>
      __$$ErrorObjectCacheImplCopyWithImpl<_$ErrorObjectCacheImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        $default, {
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        appFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        cacheFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        deviceFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        serverFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        dataParsingFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        noConnectionFailure,
  }) {
    return cacheFailure(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
  }) {
    return cacheFailure?.call(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(
          errorMessage, errorObject, errorCode, title, readableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorObject value) $default, {
    required TResult Function(ErrorObjectApp value) appFailure,
    required TResult Function(ErrorObjectCache value) cacheFailure,
    required TResult Function(ErrorObjectDevice value) deviceFailure,
    required TResult Function(ErrorObjectServer value) serverFailure,
    required TResult Function(ErrorObjectDataParsing value) dataParsingFailure,
    required TResult Function(ErrorObjectNoConnection value)
        noConnectionFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ErrorObject value)? $default, {
    TResult? Function(ErrorObjectApp value)? appFailure,
    TResult? Function(ErrorObjectCache value)? cacheFailure,
    TResult? Function(ErrorObjectDevice value)? deviceFailure,
    TResult? Function(ErrorObjectServer value)? serverFailure,
    TResult? Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult? Function(ErrorObjectNoConnection value)? noConnectionFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorObject value)? $default, {
    TResult Function(ErrorObjectApp value)? appFailure,
    TResult Function(ErrorObjectCache value)? cacheFailure,
    TResult Function(ErrorObjectDevice value)? deviceFailure,
    TResult Function(ErrorObjectServer value)? serverFailure,
    TResult Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult Function(ErrorObjectNoConnection value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class ErrorObjectCache extends ErrorObject {
  const factory ErrorObjectCache(
      {final String? errorMessage,
      final Object? errorObject,
      final String? errorCode,
      final String title,
      final String readableMessage}) = _$ErrorObjectCacheImpl;
  const ErrorObjectCache._() : super._();

  @override
  String? get errorMessage;
  @override
  Object? get errorObject;
  @override
  String? get errorCode;
  @override
  String get title;
  @override
  String get readableMessage;
  @override
  @JsonKey(ignore: true)
  _$$ErrorObjectCacheImplCopyWith<_$ErrorObjectCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorObjectDeviceImplCopyWith<$Res>
    implements $ErrorObjectCopyWith<$Res> {
  factory _$$ErrorObjectDeviceImplCopyWith(_$ErrorObjectDeviceImpl value,
          $Res Function(_$ErrorObjectDeviceImpl) then) =
      __$$ErrorObjectDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      Object? errorObject,
      String? errorCode,
      String title,
      String readableMessage});
}

/// @nodoc
class __$$ErrorObjectDeviceImplCopyWithImpl<$Res>
    extends _$ErrorObjectCopyWithImpl<$Res, _$ErrorObjectDeviceImpl>
    implements _$$ErrorObjectDeviceImplCopyWith<$Res> {
  __$$ErrorObjectDeviceImplCopyWithImpl(_$ErrorObjectDeviceImpl _value,
      $Res Function(_$ErrorObjectDeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? errorObject = freezed,
    Object? errorCode = freezed,
    Object? title = null,
    Object? readableMessage = null,
  }) {
    return _then(_$ErrorObjectDeviceImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorObject: freezed == errorObject ? _value.errorObject : errorObject,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readableMessage: null == readableMessage
          ? _value.readableMessage
          : readableMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorObjectDeviceImpl extends ErrorObjectDevice {
  const _$ErrorObjectDeviceImpl(
      {this.errorMessage,
      this.errorObject,
      this.errorCode,
      this.title = 'Error Code: DEVICE_FAILURE',
      this.readableMessage = 'There was an error with the device, '
          'please check your device settings and try again later, '
          'should the issue persist please reach out to the developer at aurell.ghania.ramadhani@gmail.com'})
      : super._();

  @override
  final String? errorMessage;
  @override
  final Object? errorObject;
  @override
  final String? errorCode;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String readableMessage;

  @override
  String toString() {
    return 'ErrorObject.deviceFailure(errorMessage: $errorMessage, errorObject: $errorObject, errorCode: $errorCode, title: $title, readableMessage: $readableMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorObjectDeviceImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.errorObject, errorObject) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readableMessage, readableMessage) ||
                other.readableMessage == readableMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      const DeepCollectionEquality().hash(errorObject),
      errorCode,
      title,
      readableMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorObjectDeviceImplCopyWith<_$ErrorObjectDeviceImpl> get copyWith =>
      __$$ErrorObjectDeviceImplCopyWithImpl<_$ErrorObjectDeviceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        $default, {
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        appFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        cacheFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        deviceFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        serverFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        dataParsingFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        noConnectionFailure,
  }) {
    return deviceFailure(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
  }) {
    return deviceFailure?.call(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (deviceFailure != null) {
      return deviceFailure(
          errorMessage, errorObject, errorCode, title, readableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorObject value) $default, {
    required TResult Function(ErrorObjectApp value) appFailure,
    required TResult Function(ErrorObjectCache value) cacheFailure,
    required TResult Function(ErrorObjectDevice value) deviceFailure,
    required TResult Function(ErrorObjectServer value) serverFailure,
    required TResult Function(ErrorObjectDataParsing value) dataParsingFailure,
    required TResult Function(ErrorObjectNoConnection value)
        noConnectionFailure,
  }) {
    return deviceFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ErrorObject value)? $default, {
    TResult? Function(ErrorObjectApp value)? appFailure,
    TResult? Function(ErrorObjectCache value)? cacheFailure,
    TResult? Function(ErrorObjectDevice value)? deviceFailure,
    TResult? Function(ErrorObjectServer value)? serverFailure,
    TResult? Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult? Function(ErrorObjectNoConnection value)? noConnectionFailure,
  }) {
    return deviceFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorObject value)? $default, {
    TResult Function(ErrorObjectApp value)? appFailure,
    TResult Function(ErrorObjectCache value)? cacheFailure,
    TResult Function(ErrorObjectDevice value)? deviceFailure,
    TResult Function(ErrorObjectServer value)? serverFailure,
    TResult Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult Function(ErrorObjectNoConnection value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (deviceFailure != null) {
      return deviceFailure(this);
    }
    return orElse();
  }
}

abstract class ErrorObjectDevice extends ErrorObject {
  const factory ErrorObjectDevice(
      {final String? errorMessage,
      final Object? errorObject,
      final String? errorCode,
      final String title,
      final String readableMessage}) = _$ErrorObjectDeviceImpl;
  const ErrorObjectDevice._() : super._();

  @override
  String? get errorMessage;
  @override
  Object? get errorObject;
  @override
  String? get errorCode;
  @override
  String get title;
  @override
  String get readableMessage;
  @override
  @JsonKey(ignore: true)
  _$$ErrorObjectDeviceImplCopyWith<_$ErrorObjectDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorObjectServerImplCopyWith<$Res>
    implements $ErrorObjectCopyWith<$Res> {
  factory _$$ErrorObjectServerImplCopyWith(_$ErrorObjectServerImpl value,
          $Res Function(_$ErrorObjectServerImpl) then) =
      __$$ErrorObjectServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      Object? errorObject,
      String? errorCode,
      String title,
      String readableMessage});
}

/// @nodoc
class __$$ErrorObjectServerImplCopyWithImpl<$Res>
    extends _$ErrorObjectCopyWithImpl<$Res, _$ErrorObjectServerImpl>
    implements _$$ErrorObjectServerImplCopyWith<$Res> {
  __$$ErrorObjectServerImplCopyWithImpl(_$ErrorObjectServerImpl _value,
      $Res Function(_$ErrorObjectServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? errorObject = freezed,
    Object? errorCode = freezed,
    Object? title = null,
    Object? readableMessage = null,
  }) {
    return _then(_$ErrorObjectServerImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorObject: freezed == errorObject ? _value.errorObject : errorObject,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readableMessage: null == readableMessage
          ? _value.readableMessage
          : readableMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorObjectServerImpl extends ErrorObjectServer {
  const _$ErrorObjectServerImpl(
      {this.errorMessage,
      this.errorObject,
      this.errorCode,
      this.title = 'Error Code: INTERNAL_SERVER_FAILURE',
      this.readableMessage =
          'It seems that the server is not reachable at the moment, try again later, '
              'should the issue persist please reach out to the developer at aurell.ghania.ramadhani@gmail.com'})
      : super._();

  @override
  final String? errorMessage;
  @override
  final Object? errorObject;
  @override
  final String? errorCode;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String readableMessage;

  @override
  String toString() {
    return 'ErrorObject.serverFailure(errorMessage: $errorMessage, errorObject: $errorObject, errorCode: $errorCode, title: $title, readableMessage: $readableMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorObjectServerImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.errorObject, errorObject) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readableMessage, readableMessage) ||
                other.readableMessage == readableMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      const DeepCollectionEquality().hash(errorObject),
      errorCode,
      title,
      readableMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorObjectServerImplCopyWith<_$ErrorObjectServerImpl> get copyWith =>
      __$$ErrorObjectServerImplCopyWithImpl<_$ErrorObjectServerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        $default, {
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        appFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        cacheFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        deviceFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        serverFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        dataParsingFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        noConnectionFailure,
  }) {
    return serverFailure(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
  }) {
    return serverFailure?.call(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(
          errorMessage, errorObject, errorCode, title, readableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorObject value) $default, {
    required TResult Function(ErrorObjectApp value) appFailure,
    required TResult Function(ErrorObjectCache value) cacheFailure,
    required TResult Function(ErrorObjectDevice value) deviceFailure,
    required TResult Function(ErrorObjectServer value) serverFailure,
    required TResult Function(ErrorObjectDataParsing value) dataParsingFailure,
    required TResult Function(ErrorObjectNoConnection value)
        noConnectionFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ErrorObject value)? $default, {
    TResult? Function(ErrorObjectApp value)? appFailure,
    TResult? Function(ErrorObjectCache value)? cacheFailure,
    TResult? Function(ErrorObjectDevice value)? deviceFailure,
    TResult? Function(ErrorObjectServer value)? serverFailure,
    TResult? Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult? Function(ErrorObjectNoConnection value)? noConnectionFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorObject value)? $default, {
    TResult Function(ErrorObjectApp value)? appFailure,
    TResult Function(ErrorObjectCache value)? cacheFailure,
    TResult Function(ErrorObjectDevice value)? deviceFailure,
    TResult Function(ErrorObjectServer value)? serverFailure,
    TResult Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult Function(ErrorObjectNoConnection value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ErrorObjectServer extends ErrorObject {
  const factory ErrorObjectServer(
      {final String? errorMessage,
      final Object? errorObject,
      final String? errorCode,
      final String title,
      final String readableMessage}) = _$ErrorObjectServerImpl;
  const ErrorObjectServer._() : super._();

  @override
  String? get errorMessage;
  @override
  Object? get errorObject;
  @override
  String? get errorCode;
  @override
  String get title;
  @override
  String get readableMessage;
  @override
  @JsonKey(ignore: true)
  _$$ErrorObjectServerImplCopyWith<_$ErrorObjectServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorObjectDataParsingImplCopyWith<$Res>
    implements $ErrorObjectCopyWith<$Res> {
  factory _$$ErrorObjectDataParsingImplCopyWith(
          _$ErrorObjectDataParsingImpl value,
          $Res Function(_$ErrorObjectDataParsingImpl) then) =
      __$$ErrorObjectDataParsingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      Object? errorObject,
      String? errorCode,
      String title,
      String readableMessage});
}

/// @nodoc
class __$$ErrorObjectDataParsingImplCopyWithImpl<$Res>
    extends _$ErrorObjectCopyWithImpl<$Res, _$ErrorObjectDataParsingImpl>
    implements _$$ErrorObjectDataParsingImplCopyWith<$Res> {
  __$$ErrorObjectDataParsingImplCopyWithImpl(
      _$ErrorObjectDataParsingImpl _value,
      $Res Function(_$ErrorObjectDataParsingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? errorObject = freezed,
    Object? errorCode = freezed,
    Object? title = null,
    Object? readableMessage = null,
  }) {
    return _then(_$ErrorObjectDataParsingImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorObject: freezed == errorObject ? _value.errorObject : errorObject,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readableMessage: null == readableMessage
          ? _value.readableMessage
          : readableMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorObjectDataParsingImpl extends ErrorObjectDataParsing {
  const _$ErrorObjectDataParsingImpl(
      {this.errorMessage,
      this.errorObject,
      this.errorCode,
      this.title = 'Error Code: JSON_PARSING_FAILURE',
      this.readableMessage =
          'It seems that the app needs to be updated to reflect the changed server data structure, '
              'if no update is available on the store please reach out to the developer at aurell.ghania.ramadhani@gmail.com'})
      : super._();

  @override
  final String? errorMessage;
  @override
  final Object? errorObject;
  @override
  final String? errorCode;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String readableMessage;

  @override
  String toString() {
    return 'ErrorObject.dataParsingFailure(errorMessage: $errorMessage, errorObject: $errorObject, errorCode: $errorCode, title: $title, readableMessage: $readableMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorObjectDataParsingImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.errorObject, errorObject) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readableMessage, readableMessage) ||
                other.readableMessage == readableMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      const DeepCollectionEquality().hash(errorObject),
      errorCode,
      title,
      readableMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorObjectDataParsingImplCopyWith<_$ErrorObjectDataParsingImpl>
      get copyWith => __$$ErrorObjectDataParsingImplCopyWithImpl<
          _$ErrorObjectDataParsingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        $default, {
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        appFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        cacheFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        deviceFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        serverFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        dataParsingFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        noConnectionFailure,
  }) {
    return dataParsingFailure(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
  }) {
    return dataParsingFailure?.call(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (dataParsingFailure != null) {
      return dataParsingFailure(
          errorMessage, errorObject, errorCode, title, readableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorObject value) $default, {
    required TResult Function(ErrorObjectApp value) appFailure,
    required TResult Function(ErrorObjectCache value) cacheFailure,
    required TResult Function(ErrorObjectDevice value) deviceFailure,
    required TResult Function(ErrorObjectServer value) serverFailure,
    required TResult Function(ErrorObjectDataParsing value) dataParsingFailure,
    required TResult Function(ErrorObjectNoConnection value)
        noConnectionFailure,
  }) {
    return dataParsingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ErrorObject value)? $default, {
    TResult? Function(ErrorObjectApp value)? appFailure,
    TResult? Function(ErrorObjectCache value)? cacheFailure,
    TResult? Function(ErrorObjectDevice value)? deviceFailure,
    TResult? Function(ErrorObjectServer value)? serverFailure,
    TResult? Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult? Function(ErrorObjectNoConnection value)? noConnectionFailure,
  }) {
    return dataParsingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorObject value)? $default, {
    TResult Function(ErrorObjectApp value)? appFailure,
    TResult Function(ErrorObjectCache value)? cacheFailure,
    TResult Function(ErrorObjectDevice value)? deviceFailure,
    TResult Function(ErrorObjectServer value)? serverFailure,
    TResult Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult Function(ErrorObjectNoConnection value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (dataParsingFailure != null) {
      return dataParsingFailure(this);
    }
    return orElse();
  }
}

abstract class ErrorObjectDataParsing extends ErrorObject {
  const factory ErrorObjectDataParsing(
      {final String? errorMessage,
      final Object? errorObject,
      final String? errorCode,
      final String title,
      final String readableMessage}) = _$ErrorObjectDataParsingImpl;
  const ErrorObjectDataParsing._() : super._();

  @override
  String? get errorMessage;
  @override
  Object? get errorObject;
  @override
  String? get errorCode;
  @override
  String get title;
  @override
  String get readableMessage;
  @override
  @JsonKey(ignore: true)
  _$$ErrorObjectDataParsingImplCopyWith<_$ErrorObjectDataParsingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorObjectNoConnectionImplCopyWith<$Res>
    implements $ErrorObjectCopyWith<$Res> {
  factory _$$ErrorObjectNoConnectionImplCopyWith(
          _$ErrorObjectNoConnectionImpl value,
          $Res Function(_$ErrorObjectNoConnectionImpl) then) =
      __$$ErrorObjectNoConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      Object? errorObject,
      String? errorCode,
      String title,
      String readableMessage});
}

/// @nodoc
class __$$ErrorObjectNoConnectionImplCopyWithImpl<$Res>
    extends _$ErrorObjectCopyWithImpl<$Res, _$ErrorObjectNoConnectionImpl>
    implements _$$ErrorObjectNoConnectionImplCopyWith<$Res> {
  __$$ErrorObjectNoConnectionImplCopyWithImpl(
      _$ErrorObjectNoConnectionImpl _value,
      $Res Function(_$ErrorObjectNoConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? errorObject = freezed,
    Object? errorCode = freezed,
    Object? title = null,
    Object? readableMessage = null,
  }) {
    return _then(_$ErrorObjectNoConnectionImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorObject: freezed == errorObject ? _value.errorObject : errorObject,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readableMessage: null == readableMessage
          ? _value.readableMessage
          : readableMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorObjectNoConnectionImpl extends ErrorObjectNoConnection {
  const _$ErrorObjectNoConnectionImpl(
      {this.errorMessage,
      this.errorObject,
      this.errorCode,
      this.title = 'Error Code: NO_CONNECTIVITY',
      this.readableMessage =
          'It seems that your device is not connected to the network, '
              'please check your internet connectivity or try again later.'})
      : super._();

  @override
  final String? errorMessage;
  @override
  final Object? errorObject;
  @override
  final String? errorCode;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String readableMessage;

  @override
  String toString() {
    return 'ErrorObject.noConnectionFailure(errorMessage: $errorMessage, errorObject: $errorObject, errorCode: $errorCode, title: $title, readableMessage: $readableMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorObjectNoConnectionImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.errorObject, errorObject) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readableMessage, readableMessage) ||
                other.readableMessage == readableMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      const DeepCollectionEquality().hash(errorObject),
      errorCode,
      title,
      readableMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorObjectNoConnectionImplCopyWith<_$ErrorObjectNoConnectionImpl>
      get copyWith => __$$ErrorObjectNoConnectionImplCopyWithImpl<
          _$ErrorObjectNoConnectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        $default, {
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        appFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        cacheFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        deviceFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        serverFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        dataParsingFailure,
    required TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)
        noConnectionFailure,
  }) {
    return noConnectionFailure(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult? Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
  }) {
    return noConnectionFailure?.call(
        errorMessage, errorObject, errorCode, title, readableMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        $default, {
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        appFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        cacheFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        deviceFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        serverFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        dataParsingFailure,
    TResult Function(String? errorMessage, Object? errorObject,
            String? errorCode, String title, String readableMessage)?
        noConnectionFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure(
          errorMessage, errorObject, errorCode, title, readableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorObject value) $default, {
    required TResult Function(ErrorObjectApp value) appFailure,
    required TResult Function(ErrorObjectCache value) cacheFailure,
    required TResult Function(ErrorObjectDevice value) deviceFailure,
    required TResult Function(ErrorObjectServer value) serverFailure,
    required TResult Function(ErrorObjectDataParsing value) dataParsingFailure,
    required TResult Function(ErrorObjectNoConnection value)
        noConnectionFailure,
  }) {
    return noConnectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ErrorObject value)? $default, {
    TResult? Function(ErrorObjectApp value)? appFailure,
    TResult? Function(ErrorObjectCache value)? cacheFailure,
    TResult? Function(ErrorObjectDevice value)? deviceFailure,
    TResult? Function(ErrorObjectServer value)? serverFailure,
    TResult? Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult? Function(ErrorObjectNoConnection value)? noConnectionFailure,
  }) {
    return noConnectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorObject value)? $default, {
    TResult Function(ErrorObjectApp value)? appFailure,
    TResult Function(ErrorObjectCache value)? cacheFailure,
    TResult Function(ErrorObjectDevice value)? deviceFailure,
    TResult Function(ErrorObjectServer value)? serverFailure,
    TResult Function(ErrorObjectDataParsing value)? dataParsingFailure,
    TResult Function(ErrorObjectNoConnection value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure(this);
    }
    return orElse();
  }
}

abstract class ErrorObjectNoConnection extends ErrorObject {
  const factory ErrorObjectNoConnection(
      {final String? errorMessage,
      final Object? errorObject,
      final String? errorCode,
      final String title,
      final String readableMessage}) = _$ErrorObjectNoConnectionImpl;
  const ErrorObjectNoConnection._() : super._();

  @override
  String? get errorMessage;
  @override
  Object? get errorObject;
  @override
  String? get errorCode;
  @override
  String get title;
  @override
  String get readableMessage;
  @override
  @JsonKey(ignore: true)
  _$$ErrorObjectNoConnectionImplCopyWith<_$ErrorObjectNoConnectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
