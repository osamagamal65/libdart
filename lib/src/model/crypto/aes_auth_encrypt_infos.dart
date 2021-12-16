// Dart imports:
import 'dart:typed_data' show Uint8List;

class AesAuthEncryptInfos {
  AesAuthEncryptInfos({
    this.tag,
    required this.encrypted,
  });

  Uint8List? tag;
  Uint8List encrypted;
}
