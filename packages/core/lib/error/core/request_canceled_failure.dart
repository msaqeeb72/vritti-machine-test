

import '../failure.dart';

class RequestCanceledFailure extends Failure{
  RequestCanceledFailure({String message = "Request Canceled!!"}):super(message);

  @override
  List<Object?> get props => [];

}