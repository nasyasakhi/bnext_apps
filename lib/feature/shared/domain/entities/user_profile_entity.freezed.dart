// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfileEntity {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get emailAlias => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileEntityCopyWith<UserProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileEntityCopyWith<$Res> {
  factory $UserProfileEntityCopyWith(
          UserProfileEntity value, $Res Function(UserProfileEntity) then) =
      _$UserProfileEntityCopyWithImpl<$Res, UserProfileEntity>;
  @useResult
  $Res call({int id, String email, String emailAlias, String phoneNumber});
}

/// @nodoc
class _$UserProfileEntityCopyWithImpl<$Res, $Val extends UserProfileEntity>
    implements $UserProfileEntityCopyWith<$Res> {
  _$UserProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? emailAlias = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailAlias: null == emailAlias
          ? _value.emailAlias
          : emailAlias // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileEntityImplCopyWith<$Res>
    implements $UserProfileEntityCopyWith<$Res> {
  factory _$$UserProfileEntityImplCopyWith(_$UserProfileEntityImpl value,
          $Res Function(_$UserProfileEntityImpl) then) =
      __$$UserProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String email, String emailAlias, String phoneNumber});
}

/// @nodoc
class __$$UserProfileEntityImplCopyWithImpl<$Res>
    extends _$UserProfileEntityCopyWithImpl<$Res, _$UserProfileEntityImpl>
    implements _$$UserProfileEntityImplCopyWith<$Res> {
  __$$UserProfileEntityImplCopyWithImpl(_$UserProfileEntityImpl _value,
      $Res Function(_$UserProfileEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? emailAlias = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$UserProfileEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailAlias: null == emailAlias
          ? _value.emailAlias
          : emailAlias // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserProfileEntityImpl implements _UserProfileEntity {
  const _$UserProfileEntityImpl(
      {required this.id,
      required this.email,
      required this.emailAlias,
      required this.phoneNumber});

  @override
  final int id;
  @override
  final String email;
  @override
  final String emailAlias;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'UserProfileEntity(id: $id, email: $email, emailAlias: $emailAlias, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailAlias, emailAlias) ||
                other.emailAlias == emailAlias) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, emailAlias, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileEntityImplCopyWith<_$UserProfileEntityImpl> get copyWith =>
      __$$UserProfileEntityImplCopyWithImpl<_$UserProfileEntityImpl>(
          this, _$identity);
}

abstract class _UserProfileEntity implements UserProfileEntity {
  const factory _UserProfileEntity(
      {required final int id,
      required final String email,
      required final String emailAlias,
      required final String phoneNumber}) = _$UserProfileEntityImpl;

  @override
  int get id;
  @override
  String get email;
  @override
  String get emailAlias;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileEntityImplCopyWith<_$UserProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
