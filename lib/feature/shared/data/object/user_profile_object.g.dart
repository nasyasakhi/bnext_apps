// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserProfileObjectAdapter extends TypeAdapter<UserProfileObject> {
  @override
  final int typeId = 2;

  @override
  UserProfileObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserProfileObject(
      id: fields[1] as int,
      email: fields[2] as String,
      emailAlias: fields[3] as String,
      phoneNumber: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserProfileObject obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.emailAlias)
      ..writeByte(4)
      ..write(obj.phoneNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserProfileObjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
