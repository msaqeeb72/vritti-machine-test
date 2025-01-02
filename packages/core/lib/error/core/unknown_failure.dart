import '../failure.dart';

class UnknownFailure extends Failure {
  final int? code;
  UnknownFailure({this.code, String message = "Something went wrong!!!"}):super(message);

  @override
  List<Object?> get props => [];

}