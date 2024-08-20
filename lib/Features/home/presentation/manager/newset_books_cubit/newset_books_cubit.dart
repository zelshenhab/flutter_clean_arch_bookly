import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookly/Features/home/domain/entities/book_entity.dart';
import 'package:flutter_bookly/Features/home/domain/use_cases/fetch_newset_books_use_case.dart';
part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.fetchNewsetBooksUseCase) : super(NewsetBooksInitial());
  final FetchNewsetBooksUseCase fetchNewsetBooksUseCase;
  Future<void> fetchNewestBooks() async {
    emit(NewsetBooksLoading());
    var result = await fetchNewsetBooksUseCase.call();
    result.fold((failure) {
      emit(NewsetBooksFailure(failure.message));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}
