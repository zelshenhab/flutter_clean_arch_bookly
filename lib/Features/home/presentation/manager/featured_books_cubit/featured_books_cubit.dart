import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_bookly/Features/home/domain/use_cases/fetch_featured_books_use_case.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await featuredBooksUseCase.call();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}


//var result = await homeRepo.fetchFeaturedBooks();
    // result.fold(
    //   (failure) {
    //     emit(FeaturedBooksFailure(failure.message));
    //   },
    //   (books) {
    //     emit(FeaturedBooksSuccess(books));
    //   },
    // );
