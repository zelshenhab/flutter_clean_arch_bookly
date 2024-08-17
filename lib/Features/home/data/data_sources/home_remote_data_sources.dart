import 'package:flutter_bookly/Features/home/domain/entities/book_entitiy.dart';

abstract class HomeRemoteDataSources {
  Future<List<BookEntitiy>> fetchFeaturedBooks();
  Future<List<BookEntitiy>> fetchNewestBooks();
}

class HomeRemoteDataSourcesImpl extends HomeRemoteDataSources {
  @override
  Future<List<BookEntitiy>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntitiy>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
