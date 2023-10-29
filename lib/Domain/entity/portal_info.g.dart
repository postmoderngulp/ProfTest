// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portal_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PortalInfoAdapter extends TypeAdapter<PortalInfo> {
  @override
  final int typeId = 0;

  @override
  PortalInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PortalInfo(
      id_: fields[0] as String,
      name: fields[1] as String,
      phone_number: fields[2] as String,
      inn: fields[3] as String,
      address: fields[4] as String,
      logo: fields[5] as String?,
      color: fields[6] as String?,
      purpose: fields[7] as String?,
      mission: fields[8] as String?,
      description: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, PortalInfo obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id_)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.phone_number)
      ..writeByte(3)
      ..write(obj.inn)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.logo)
      ..writeByte(6)
      ..write(obj.color)
      ..writeByte(7)
      ..write(obj.purpose)
      ..writeByte(8)
      ..write(obj.mission)
      ..writeByte(9)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PortalInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
