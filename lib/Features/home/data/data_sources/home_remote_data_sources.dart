import 'package:flutter_bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter_bookly/Features/home/domain/entities/book_entitiy.dart';
import 'package:flutter_bookly/constants.dart';
import 'package:flutter_bookly/core/utils/api_service.dart';
import 'package:flutter_bookly/core/utils/function/save_books.dart';

abstract class HomeRemoteDataSources {
  Future<List<BookEntitiy>> fetchFeaturedBooks();
  Future<List<BookEntitiy>> fetchNewestBooks();
}

class HomeRemoteDataSourcesImpl extends HomeRemoteDataSources {
  final ApiService apiService;

  HomeRemoteDataSourcesImpl(this.apiService);
  @override
  Future<List<BookEntitiy>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint: "volumes?Filtering=free-ebooks&q=subject:Programming");
    List<BookEntitiy> books = getBooksList(data);

    saveBooksData(books, kFeaturedBox);

    return books;
  }

  @override
  Future<List<BookEntitiy>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint:
            "volumes?Filtering=free-ebooks&sorting=newest&q=subject:Programming");

    List<BookEntitiy> books = getBooksList(data);
    return books;
  }

  List<BookEntitiy> getBooksList(Map<String, dynamic> data) {
    List<BookEntitiy> books = [];
    //كل  bookMap جوا ال data وضيف عليها
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
