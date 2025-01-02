

import '../failure.dart';

class ReceiveTimeoutFailure extends Failure{
  ReceiveTimeoutFailure({String message = "Receive Timeout!!"}):super(message);

  @override
  List<Object?> get props => [];

}