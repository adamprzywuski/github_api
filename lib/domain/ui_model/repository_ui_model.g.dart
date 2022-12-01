// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_ui_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RepositoryUiModelAdapter extends TypeAdapter<RepositoryUiModel> {
  @override
  final int typeId = 1;

  @override
  RepositoryUiModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RepositoryUiModel(
      (fields[0] as List).cast<CommitUiModel>(),
      fields[1] as int,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RepositoryUiModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.commits)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RepositoryUiModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
