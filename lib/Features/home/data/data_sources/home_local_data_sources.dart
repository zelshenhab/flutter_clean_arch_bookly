import 'package:flutter_bookly/Features/home/domain/entities/book_entitiy.dart';
import 'package:flutter_bookly/constants.dart';
import 'package:hive/hive.dart';

abstract class HomeRemoteDataSources {
  List<BookEntitiy> fetchFeaturedBooks();
  List<BookEntitiy> fetchNewestBooks();
}

class HomeLocalDataSourcesImpl extends HomeRemoteDataSources {
  @override
  List<BookEntitiy> fetchFeaturedBooks() {
    var box = Hive.box<BookEntitiy>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntitiy> fetchNewestBooks() {
    var box = Hive.box<BookEntitiy>(kNewestBox);
    return box.values.toList();
  }
}
