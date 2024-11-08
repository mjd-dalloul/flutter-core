import 'dart:convert';
import 'dart:io';

extension FileExt on File {
  Future<String> toBase64() async => base64Encode(await readAsBytes());
}
