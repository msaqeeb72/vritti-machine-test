import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable implements Exception {
  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  final String? message;
  Failure(this.message, [List properties = const <dynamic>[]]) : super();
}