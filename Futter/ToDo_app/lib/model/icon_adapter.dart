import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

class IconAdapter extends TypeAdapter<Icon> {
  @override
  final typeId = 222;

  @override
  Icon read(BinaryReader reader) => Icon(IconData(reader.readUint32()));

  @override
  void write(BinaryWriter writer, Icon obj) =>
      writer.writeUint32(obj.icon?.codePoint ?? 0);
}
