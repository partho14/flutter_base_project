import 'dart:convert';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class FileService {
  static final ImagePicker _picker = ImagePicker();
  static String getBase64Image(File imageFile) {
    List<int> imageBytes = imageFile.readAsBytesSync();
    return base64Encode(imageBytes);
  }

  static Future<XFile?> pickImage(ImageSource source, {int imageQuality = 50}) {
    return _picker.pickImage(source: source, imageQuality: imageQuality);
  }
}