import 'package:flutter/cupertino.dart';

extension TextEditingControllerExt on TextEditingController {
  void selectAll() {
    if (text.isNotEmpty) {
      selection = TextSelection(baseOffset: 0, extentOffset: text.length);
    }
  }
}
