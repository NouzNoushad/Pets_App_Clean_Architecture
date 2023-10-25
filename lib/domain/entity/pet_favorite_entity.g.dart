// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_favorite_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PetFavoriteEntityAdapter extends TypeAdapter<PetFavoriteEntity> {
  @override
  final int typeId = 0;

  @override
  PetFavoriteEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PetFavoriteEntity(
      image: fields[0] as String?,
      id: fields[1] as String?,
      adaptability: fields[4] as int?,
      affectionLevel: fields[5] as int?,
      childFriendly: fields[6] as int?,
      description: fields[3] as String?,
      dogFriendly: fields[7] as int?,
      energyLevel: fields[8] as int?,
      grooming: fields[9] as int?,
      healthIssues: fields[10] as int?,
      intelligence: fields[11] as int?,
      name: fields[2] as String?,
      sheddingLevel: fields[12] as int?,
      socialNeeds: fields[13] as int?,
      strangerFriendly: fields[14] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, PetFavoriteEntity obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.image)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.adaptability)
      ..writeByte(5)
      ..write(obj.affectionLevel)
      ..writeByte(6)
      ..write(obj.childFriendly)
      ..writeByte(7)
      ..write(obj.dogFriendly)
      ..writeByte(8)
      ..write(obj.energyLevel)
      ..writeByte(9)
      ..write(obj.grooming)
      ..writeByte(10)
      ..write(obj.healthIssues)
      ..writeByte(11)
      ..write(obj.intelligence)
      ..writeByte(12)
      ..write(obj.sheddingLevel)
      ..writeByte(13)
      ..write(obj.socialNeeds)
      ..writeByte(14)
      ..write(obj.strangerFriendly);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PetFavoriteEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
