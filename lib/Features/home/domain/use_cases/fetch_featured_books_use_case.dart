import 'package:dartz/dartz.dart';
import 'package:flutter_bookly/Features/home/domain/entities/book_entitiy.dart';
import 'package:flutter_bookly/Features/home/domain/repos/home_repo.dart';
import 'package:flutter_bookly/core/errors/failures.dart';
import 'package:flutter_bookly/core/use_cases/use_cases.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntitiy>, NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<List<Either<Failure, List<BookEntitiy>>>> call(
      [NoParam? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
