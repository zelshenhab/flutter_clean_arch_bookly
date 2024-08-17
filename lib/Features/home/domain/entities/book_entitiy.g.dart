// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entitiy.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntitiyAdapter extends TypeAdapter<BookEntitiy> {
  @override
  final int typeId = 0;

  @override
  BookEntitiy read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookEntitiy(
      bookId: fields[0] as String,
      image: fields[1] as String?,
      price: fields[2] as num?,
      rating: fields[3] as num?,
      title: fields[4] as String,
      authorName: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BookEntitiy obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.rating)
      ..writeByte(4)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.authorName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntitiyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
