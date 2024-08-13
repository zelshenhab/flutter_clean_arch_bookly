import 'package:dartz/dartz.dart';
import 'package:flutter_bookly/Features/home/domain/entities/book_entitiy.dart';
import 'package:flutter_bookly/Features/home/domain/repos/home_repo.dart';
import 'package:flutter_bookly/core/errors/failures.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<List<Either<Failure, List<BookEntitiy>>>> fetchFeaturedBooks() {
    return homeRepo.fetchFeaturedBooks();
  }
}
