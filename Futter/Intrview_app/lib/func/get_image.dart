import 'dart:convert';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

File convertToFile(XFile xFile) => File(xFile.path);

Future<String> getImageFromGallery() async {
  try {
    final xfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    final file = convertToFile(xfile!);
    final bytes = file.readAsBytesSync();
    final fileInBase64 = base64Encode(bytes);
    return 'image/png;base64,$fileInBase64';
  } catch (_) {
    return '';
  }
}
