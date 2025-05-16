// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TokenObjectAdapter extends TypeAdapter<TokenObject> {
  @override
  final int typeId = 0;

  @override
  TokenObject read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TokenObject(
      accessToken: fields[1] as String,
      accessTokenExpiresAt: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, TokenObject obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.accessToken)
      ..writeByte(2)
      ..write(obj.accessTokenExpiresAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokenObjectAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
