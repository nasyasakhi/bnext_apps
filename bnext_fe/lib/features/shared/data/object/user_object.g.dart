// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserObjectAdapter extends TypeAdapter<UserObject> {
  @override
  final int typeId = 1;

  @override
  UserObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserObject(
      id: fields[1] as int,
      username: fields[2] as String,
      password: fields[3] as String,
      userProfileId: fields[4] as int,
      userProfile: fields[5] as UserProfileObject?,
    );
  }

  @override
  void write(BinaryWriter writer, UserObject obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.username)
      ..writeByte(3)
      ..write(obj.password)
      ..writeByte(4)
      ..write(obj.userProfileId)
      ..writeByte(5)
      ..write(obj.userProfile);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserObjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
