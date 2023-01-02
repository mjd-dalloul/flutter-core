import 'package:flutter/material.dart';

class BottomSheetDraggableContainer extends StatelessWidget {
  const BottomSheetDraggableContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(8.0)),
    );
  }
}
