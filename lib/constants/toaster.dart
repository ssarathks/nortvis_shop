import 'package:flutter/material.dart';

class Toaster {
  static void showToaster(
      {required BuildContext context,
      required Widget content,
      required String type}) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: content,
      margin: const EdgeInsets.only(bottom: 0),
      behavior: SnackBarBehavior.floating,
      backgroundColor: getToasterColor(type),
    ));
  }

  static Color? getToasterColor(type) {
    switch (type) {
      case 'error':
        return Colors.red.shade400;
      case 'success':
        return Colors.green.shade400;
      default:
        return null;
    }
  }
}
