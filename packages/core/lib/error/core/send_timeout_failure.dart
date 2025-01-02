
import '../failure.dart';

class SendTimeoutFailure extends Failure{
  SendTimeoutFailure({String message = "Send Timeout!!"}):super(message);

  @override
  List<Object?> get props => [];

}