import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

extension StringExt on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  String get initialLetters {
    if (isNullOrEmpty) {
      return '';
    } else {
      final firstNameLastName = this!.split(' ');
      return firstNameLastName.first[0].toUpperCase() +
          (firstNameLastName.length > 1
              ? firstNameLastName.last[0].toUpperCase()
              : '');
    }
  }

  Future<File> toFileFromBase64(String path) =>
      File(path).writeAsBytes(base64Decode(this!));

  Size textSize(
    TextStyle style,
    TextDirection direction, [
    double textScaleFactor = 1,
  ]) =>
      (TextPainter(
        text: TextSpan(
          text: this!.replaceAll('\n', ''),
          style: style,
        ),
        textScaleFactor: textScaleFactor,
        textDirection: direction,
      )..layout())
          .size;
}
