import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core/utils/extensions/build_context_ext.dart';

abstract class HelperDialogs {
  static Future<T?> showCupertinoConfirmDialog<T>({
    required BuildContext context,
    required String title,
    required String contentText,
    VoidCallback? onConfirm,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
    bool isDismissible = true,
    TextStyle? titleStyle,
    TextStyle? contentStyle,
    TextStyle? confirmStyle,
    TextStyle? cancelStyle,
  }) {
    return showCupertinoDialog<T>(
      context: context,
      barrierDismissible: isDismissible,
      builder: (context) => CupertinoAlertDialog(
        title: Text(
          title,
          style: titleStyle,
        ),
        content: Text(
          contentText,
          style: contentStyle,
        ),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              onConfirm?.call();
              context.pop();
            },
            textStyle: confirmStyle,
            child: Text(confirmText),
          ),
          CupertinoDialogAction(
            onPressed: () {
              context.pop();
            },
            isDestructiveAction: true,
            textStyle: cancelStyle,
            child: Text(cancelText),
          ),
        ],
      ),
    );
  }

  static Future<T?> showMaterialConfirmDialog<T>({
    required BuildContext context,
    required String title,
    required String contentText,
    Widget? icon,
    Color? iconColor,
    VoidCallback? onConfirm,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
    bool isDismissible = true,
    bool confirmDialogIsTextButton = true,
    TextStyle? titleStyle,
    TextStyle? contentStyle,
    TextStyle? confirmStyle,
    TextStyle? cancelStyle,
  }) {
    return showDialog<T>(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                title,
                style: titleStyle,
              ),
              content: Text(
                contentText,
                style: contentStyle,
              ),
              icon: icon,
              iconColor: iconColor,
              actions: [
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text(
                    cancelText,
                    style: cancelStyle,
                  ),
                ),
                if (confirmDialogIsTextButton)
                  TextButton(
                    onPressed: () {
                      onConfirm?.call();
                      context.pop();
                    },
                    child: Text(
                      confirmText,
                      style: confirmStyle,
                    ),
                  )
                else
                  ElevatedButton(
                    onPressed: () {
                      onConfirm?.call();
                      context.pop();
                    },
                    child: Text(
                      confirmText,
                      style: confirmStyle,
                    ),
                  ),
              ],
            ));
  }

  static Future<T?> showCupertinoStatusDialog<T>({
    required BuildContext context,
    required String title,
    required String contentText,
    VoidCallback? onConfirm,
    String confirmText = 'Ok',
    bool isDismissible = true,
    TextStyle? titleStyle,
    TextStyle? contentStyle,
    TextStyle? confirmStyle,
  }) {
    return showCupertinoDialog<T>(
      context: context,
      barrierDismissible: isDismissible,
      builder: (context) => CupertinoAlertDialog(
        title: Text(
          title,
          style: titleStyle,
        ),
        content: Text(
          contentText,
          style: contentStyle,
        ),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              onConfirm?.call();
              context.pop();
            },
            textStyle: confirmStyle,
            child: Text(confirmText),
          ),
        ],
      ),
    );
  }

  static Future<T?> showMaterialStatusDialog<T>({
    required BuildContext context,
    String? title,
    String? contentText,
    Widget? icon,
    Color? iconColor,
    VoidCallback? onConfirm,
    String confirmText = 'Ok',
    bool isDismissible = true,
    bool confirmDialogIsTextButton = true,
    TextStyle? titleStyle,
    TextStyle? contentStyle,
    TextStyle? confirmStyle,
    AlignmentGeometry confirmAlignmentButton = AlignmentDirectional.center,
  }) {
    return showDialog<T>(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: title == null
                ? null
                : Text(
                    title,
                    style: titleStyle,
                  ),
            content: contentText == null
                ? null
                : Text(
                    contentText,
                    style: contentStyle,
                  ),
            icon: icon,
            iconColor: iconColor,
            actions: [
              Align(
                alignment: confirmAlignmentButton,
                child: confirmDialogIsTextButton
                    ? TextButton(
                        onPressed: () {
                          onConfirm?.call();
                          context.pop();
                        },
                        child: Text(
                          confirmText,
                          style: confirmStyle,
                        ),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          onConfirm?.call();
                          context.pop();
                        },
                        child: Text(
                          confirmText,
                          style: confirmStyle,
                        ),
                      ),
              ),
            ],
          );
        });
  }
}
