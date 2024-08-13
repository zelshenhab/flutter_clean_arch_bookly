import 'package:dartz/dartz.dart';
import 'package:flutter_bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bookly/core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
