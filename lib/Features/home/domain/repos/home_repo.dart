import 'package:dartz/dartz.dart';
import 'package:flutter_bookly/Features/home/domain/entities/book_entitiy.dart';
import 'package:flutter_bookly/core/errors/failures.dart';

abstract class HomeRepo {
  Future<List<Either<Failure, List<BookEntitiy>>>> fetchFeaturedBooks();
  Future<List<Either<Failure, List<BookEntitiy>>>> fetchNewestBooks();
}
