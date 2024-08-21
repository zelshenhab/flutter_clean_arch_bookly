import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly/Features/home/data/repos/home_repo.dart';
import 'package:flutter_bookly/Features/home/domain/entities/book_entity.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.message));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
