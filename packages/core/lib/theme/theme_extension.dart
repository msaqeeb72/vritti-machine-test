import 'package:flutter/material.dart';

extension ContextTheme on BuildContext{
  ColorScheme colorScheme() => Theme.of(this).colorScheme;
}