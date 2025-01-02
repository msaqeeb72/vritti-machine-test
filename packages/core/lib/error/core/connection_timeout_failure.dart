

import '../failure.dart';

class ConnectionTimeoutFailure extends Failure{
  ConnectionTimeoutFailure({String message = "Connection Timeout!!"}):super(message);

  @override
  List<Object?> get props => [];

}