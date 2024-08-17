import 'package:flutter_bookly/Features/home/domain/entities/book_entitiy.dart';

abstract class HomeRemoteDataSources {
  List<BookEntitiy> fetchFeaturedBooks();
  List<BookEntitiy> fetchNewestBooks();
}

class HomeLocalDataSourcesImpl extends HomeRemoteDataSources {
  @override
  List<BookEntitiy> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntitiy> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
