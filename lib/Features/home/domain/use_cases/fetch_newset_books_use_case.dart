import 'package:dartz/dartz.dart';
import 'package:flutter_bookly/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_bookly/Features/home/domain/repos/home_repo.dart';
import 'package:flutter_bookly/core/errors/failures.dart';
import 'package:flutter_bookly/core/use_cases/use_cases.dart';

class FetchNewsetBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewsetBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
