import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

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
    TextDirection textDirection, [
    double textScaleFactor = 1,
  ]) =>
      (TextPainter(
        text: TextSpan(
          text: this!.replaceAll('\n', ''),
          style: style,
        ),
        textScaleFactor: textScaleFactor,
        textDirection: textDirection,
      )..layout())
          .size;

  String getDayTh([String? locale]) =>
      intl.DateFormat.d(locale).format(DateTime.parse(this!));

  String getDayShortName([String? locale]) =>
      intl.DateFormat.E(locale).format(DateTime.parse(this!));

  String getDayFullName([String? locale]) =>
      intl.DateFormat.EEEE(locale).format(DateTime.parse(this!));

  String getMonthShortName([String? locale]) =>
      intl.DateFormat.MMM(locale).format(DateTime.parse(this!));

  String getMonthFullName([String? locale]) =>
      intl.DateFormat.MMMM(locale).format(DateTime.parse(this!));

  String getMonthTh([String? locale]) =>
      intl.DateFormat.M(locale).format(DateTime.parse(this!));

  String getMonthDayTh([String? locale]) =>
      intl.DateFormat.Md(locale).format(DateTime.parse(this!));

  String getDayNameWithDate([String? locale]) =>
      intl.DateFormat.MEd(locale).format(DateTime.parse(this!));

  String getDayNameMonthNameWithDate([String? locale]) =>
      intl.DateFormat.MMMEd(locale).format(DateTime.parse(this!));

  String get svg => '$this.svg';

  String get png => '$this.png';

  String get jpg => '$this.jpg';
}
