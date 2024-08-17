import 'package:flutter_bookly/Features/home/domain/entities/book_entitiy.dart';
import 'package:hive/hive.dart';

void saveBooksData(List<BookEntitiy> books, String boxName) {
  var box = Hive.box(boxName);
  box.addAll(books);
}
