import 'package:flutter/material.dart';

class FocusHelper {
  static void unfocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
