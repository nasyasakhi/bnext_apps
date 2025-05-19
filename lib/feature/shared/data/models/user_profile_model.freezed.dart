// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email_alias")
  String get emailAlias => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "refferal")
  int get refferal => throw _privateConstructorUsedError;
  @JsonKey(name: "kode_refferal_user")
  String get kodeRefferalUser => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_at")
  dynamic get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
          UserProfileModel value, $Res Function(UserProfileModel) then) =
      _$UserProfileModelCopyWithImpl<$Res, UserProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "email_alias") String emailAlias,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "refferal") int refferal,
      @JsonKey(name: "kode_refferal_user") String kodeRefferalUser,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt,
      @JsonKey(name: "deleted_at") dynamic deletedAt});
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res, $Val extends UserProfileModel>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

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
    Object? isActive = null,
    Object? refferal = null,
    Object? kodeRefferalUser = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
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
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      refferal: null == refferal
          ? _value.refferal
          : refferal // ignore: cast_nullable_to_non_nullable
              as int,
      kodeRefferalUser: null == kodeRefferalUser
          ? _value.kodeRefferalUser
          : kodeRefferalUser // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileModelImplCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$$UserProfileModelImplCopyWith(_$UserProfileModelImpl value,
          $Res Function(_$UserProfileModelImpl) then) =
      __$$UserProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "email_alias") String emailAlias,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "refferal") int refferal,
      @JsonKey(name: "kode_refferal_user") String kodeRefferalUser,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt,
      @JsonKey(name: "deleted_at") dynamic deletedAt});
}

/// @nodoc
class __$$UserProfileModelImplCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res, _$UserProfileModelImpl>
    implements _$$UserProfileModelImplCopyWith<$Res> {
  __$$UserProfileModelImplCopyWithImpl(_$UserProfileModelImpl _value,
      $Res Function(_$UserProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? emailAlias = null,
    Object? phoneNumber = null,
    Object? isActive = null,
    Object? refferal = null,
    Object? kodeRefferalUser = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$UserProfileModelImpl(
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
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      refferal: null == refferal
          ? _value.refferal
          : refferal // ignore: cast_nullable_to_non_nullable
              as int,
      kodeRefferalUser: null == kodeRefferalUser
          ? _value.kodeRefferalUser
          : kodeRefferalUser // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileModelImpl implements _UserProfileModel {
  const _$UserProfileModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "email_alias") required this.emailAlias,
      @JsonKey(name: "phone_number") required this.phoneNumber,
      @JsonKey(name: "is_active") required this.isActive,
      @JsonKey(name: "refferal") required this.refferal,
      @JsonKey(name: "kode_refferal_user") required this.kodeRefferalUser,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt,
      @JsonKey(name: "deleted_at") required this.deletedAt});

  factory _$UserProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "email_alias")
  final String emailAlias;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;
  @override
  @JsonKey(name: "refferal")
  final int refferal;
  @override
  @JsonKey(name: "kode_refferal_user")
  final String kodeRefferalUser;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "deleted_at")
  final dynamic deletedAt;

  @override
  String toString() {
    return 'UserProfileModel(id: $id, email: $email, emailAlias: $emailAlias, phoneNumber: $phoneNumber, isActive: $isActive, refferal: $refferal, kodeRefferalUser: $kodeRefferalUser, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailAlias, emailAlias) ||
                other.emailAlias == emailAlias) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.refferal, refferal) ||
                other.refferal == refferal) &&
            (identical(other.kodeRefferalUser, kodeRefferalUser) ||
                other.kodeRefferalUser == kodeRefferalUser) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      emailAlias,
      phoneNumber,
      isActive,
      refferal,
      kodeRefferalUser,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(deletedAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      __$$UserProfileModelImplCopyWithImpl<_$UserProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileModelImplToJson(
      this,
    );
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  const factory _UserProfileModel(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "email") required final String email,
          @JsonKey(name: "email_alias") required final String emailAlias,
          @JsonKey(name: "phone_number") required final String phoneNumber,
          @JsonKey(name: "is_active") required final bool isActive,
          @JsonKey(name: "refferal") required final int refferal,
          @JsonKey(name: "kode_refferal_user")
          required final String kodeRefferalUser,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "updated_at") required final DateTime updatedAt,
          @JsonKey(name: "deleted_at") required final dynamic deletedAt}) =
      _$UserProfileModelImpl;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$UserProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "email_alias")
  String get emailAlias;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(name: "refferal")
  int get refferal;
  @override
  @JsonKey(name: "kode_refferal_user")
  String get kodeRefferalUser;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "deleted_at")
  dynamic get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
