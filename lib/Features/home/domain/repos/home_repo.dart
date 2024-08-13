import 'package:flutter_bookly/Features/home/domain/entities/book_entitiy.dart';

abstract class HomeRepo {
  Future<List<BookEntitiy>> fetchFeaturedBooks();
  Future<List<BookEntitiy>> fetchNewestBooks();
}
