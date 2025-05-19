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
      isActive: fields[5] as bool,
      refferal: fields[6] as int,
      kodeRefferalUser: fields[7] as String,
      createdAt: fields[8] as DateTime,
      updatedAt: fields[9] as DateTime,
      deletedAt: fields[10] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, UserProfileObject obj) {
    writer
      ..writeByte(10)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.emailAlias)
      ..writeByte(4)
      ..write(obj.phoneNumber)
      ..writeByte(5)
      ..write(obj.isActive)
      ..writeByte(6)
      ..write(obj.refferal)
      ..writeByte(7)
      ..write(obj.kodeRefferalUser)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt)
      ..writeByte(10)
      ..write(obj.deletedAt);
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
