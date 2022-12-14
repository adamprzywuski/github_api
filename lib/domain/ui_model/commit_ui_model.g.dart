// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_ui_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CommitUiModelAdapter extends TypeAdapter<CommitUiModel> {
  @override
  final int typeId = 2;

  @override
  CommitUiModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CommitUiModel(
      fields[2] as String,
      fields[1] as String,
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CommitUiModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.sha)
      ..writeByte(1)
      ..write(obj.author)
      ..writeByte(2)
      ..write(obj.message);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommitUiModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
