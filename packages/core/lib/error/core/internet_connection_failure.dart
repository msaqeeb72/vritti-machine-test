import '../failure.dart';

class InternetConnectionFailure extends Failure{
  InternetConnectionFailure({String message = "Check Internet Connection!!"}):super(message);

  @override
  List<Object?> get props => [];
}