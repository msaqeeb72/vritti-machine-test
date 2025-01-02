import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/app/app.dart';
import 'package:machine_test/di/di.dart';

void main() {
  initCoreDependencies();
  initFeatureDependencies();
  runApp(const App());
}
