import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class NoParamUseCase<T> {
  Future<Either<Failure, T>> call();
}