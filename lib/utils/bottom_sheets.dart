import 'package:flutter/material.dart';
import 'package:flutter_core/presentation/widgets/bottom_sheet_draggable_container.dart';
import 'package:flutter_core/utils/extensions/build_context_ext.dart';

abstract class BottomSheets {
  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    EdgeInsetsGeometry childPadding = const EdgeInsets.symmetric(
      vertical: 4.0,
      horizontal: 16.0,
    ),
    double sheetBorderRadius = 16.0,
    bool isDismissible = true,
    double? maxHeight,
    double? minHeight,
  }) =>
      showModalBottomSheet<T>(
        enableDrag: true,
        isDismissible: true,
        isScrollControlled: true,
        constraints: maxHeight == null
            ? BoxConstraints(
                maxHeight:
                    context.fullHeight - context.mediaQuery.viewPadding.top,
                minHeight: minHeight ?? 0.0,
              )
            : BoxConstraints(
                maxHeight: maxHeight,
                minHeight: minHeight ?? 0.0,
              ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(sheetBorderRadius),
            topRight: Radius.circular(sheetBorderRadius),
          ),
        ),
        context: context,
        builder: (_) => SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 8.0,
              ),
              const BottomSheetDraggableContainer(),
              const SizedBox(
                height: 24.0,
              ),
              Flexible(
                child: Padding(
                  padding: childPadding,
                  child: child,
                ),
              ),
            ],
          ),
        ),
      );
}
