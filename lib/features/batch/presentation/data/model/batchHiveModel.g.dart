// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batchHiveModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BatchhivemodelAdapter extends TypeAdapter<Batchhivemodel> {
  @override
  final int typeId = 1;

  @override
  Batchhivemodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Batchhivemodel(
      batchId: fields[0] as String?,
      batchName: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Batchhivemodel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.batchId)
      ..writeByte(1)
      ..write(obj.batchName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BatchhivemodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
