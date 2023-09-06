// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExploreEntityAdapter extends TypeAdapter<ExploreEntity> {
  @override
  final int typeId = 0;

  @override
  ExploreEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExploreEntity(
      exIsLiked: fields[3] as bool?,
      exIsSaved: fields[4] as bool?,
      plantId: fields[0] as num?,
      exImage: fields[1] as String?,
      plantDescription: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ExploreEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.plantId)
      ..writeByte(1)
      ..write(obj.exImage)
      ..writeByte(2)
      ..write(obj.plantDescription)
      ..writeByte(3)
      ..write(obj.exIsLiked)
      ..writeByte(4)
      ..write(obj.exIsSaved);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExploreEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
