import 'package:dartz/dartz.dart';

import '../error/failure.dart';


abstract class UseCase<Input,Output>{
  Future<Either<Failure,Output>> call(Input param);
}