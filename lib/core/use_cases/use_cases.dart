import 'package:dartz/dartz.dart';
import 'package:flutter_bookly/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_bookly/core/errors/failures.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failure, List<BookEntity>>> call([Param param]);
}

class NoParam {}
